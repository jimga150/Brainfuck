#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include <signal.h>

#include "Timers.h"

#define GROWTH_AMT (256)
#define TRUE (1)
#define FALSE (0)

volatile int sigint_received = FALSE; //True when SIGINT is received

void sigintHandler(int sign_num); //SIGINT points to this function upon installation, see below

void printLongArray(FILE* outputstream, long* iArray, int len, char* fs);
void printIntArray(FILE* outputstream, int* iArray, int len, char* fs);

int main(int argc, char* argv[]){
    
	signal(SIGINT, sigintHandler); //Point SIGINT signals to this function

	char* prog_filename = NULL;
	char* input_filename = NULL;
	char* output_filename = NULL;
	char inFileDefined = FALSE;
	char outFileDefined = FALSE;
	long max_instructions = LONG_MAX; //default value when not defined
	long max_memory = LONG_MAX; //memory can be limited
	//int Err_code = 0;
	
	int rc;
	int option_index = 0;
	char* getoptOptions = "p:i:o:c:m:";

	struct option long_options[] = {
		{"program", 		required_argument,	0,	'p'},
		{"prog", 		required_argument, 	0, 	'p'},
		{"input", 		required_argument, 	0,	'i'},
		{"in", 			required_argument, 	0, 	'i'},
		{"output", 		required_argument, 	0, 	'o'},
		{"out", 		required_argument, 	0, 	'o'},
		{"maxinstructions",	required_argument, 	0, 	'c'},
		{"maxi", 		required_argument, 	0, 	'c'},
		{"maxmemory",		required_argument,	0,	'm'},
		{"maxm", 		required_argument,	0,	'm'},
		{0, 0, 0, 0}
	};	
	
	opterr = 1;
	while ((rc = \
		getopt_long_only(argc, argv, getoptOptions, long_options, &option_index)) != -1) {
		switch(rc){
			case 'p':
				//printf("Found file: %s\n", optarg);
				prog_filename = optarg;
				break;
			case 'i':
				input_filename = optarg;
				inFileDefined = TRUE;
				break;
			case 'o':
				output_filename = optarg;
				outFileDefined = TRUE;
				break;
			case 'm':
				max_memory = atoll(optarg);
				break;	
			case 'c':
				max_instructions = atoll(optarg);
				break;
			case '?': //already handled
				break;
			default:
				fprintf(stderr, "Internal error: undefined option %0xX\n", rc);
				return 1;
		}
	}
	//printf("optind = %d, argc = %d, filename = %p\n", optind, argc, (void*)prog_filename);	
	if ((optind < argc) || prog_filename == NULL){
		//print usage shit
        fprintf(stderr,
                "Usage: ./%s -p[rog[ram]] <Program File> [-i[n[put]] <Input file>] [-o[ut[put]] <Output File>] -[-m[axm[emory]] <# of addresses>] [[-maxi[nstructions]/c] <#>]\n",
                __FILE__);
		fflush(stderr);
		return 1;
	}
	
	FILE *InFile = stdin;
	FILE *OutFile = stdout;

    //printf("opening %s...\n", prog_filename);
	FILE* ProgFile = fopen(prog_filename, "r");
	if (ProgFile == NULL){
		fprintf(stderr, "File open failed on line %d!\n", __LINE__);
		return 1;
	}

	if (inFileDefined){
		InFile = fopen(input_filename, "r");
	}

	if (outFileDefined){
		OutFile = fopen(output_filename, "a"); //append mode
	}

	char ch;
	
	//count number of characters in file
	long char_count = 0;
	while ((ch = fgetc(ProgFile)) != EOF){
		//putchar(ch);
		if (ch == '>' || ch == '<' || ch == '+' || ch == '-' || \
			ch == '[' || ch == ']' || ch == '.' || ch == ','){
			char_count++;
			//putchar('!');
		}
	}
	rewind(ProgFile);
	printf("Number of valid characters in file: %ld\n", char_count);
	
	char* prog = malloc(char_count*sizeof(char));

	int i = 0;
	while ((ch = fgetc(ProgFile)) != EOF){
		//putchar(ch);
		if (ch == '>' || ch == '<' || ch == '+' || ch == '-' || \
			ch == '[' || ch == ']' || ch == '.' || ch == ','){
			prog[i++] = ch;
			//putchar('!');
		}
	}
	fclose(ProgFile);
	
	//build loop list
	//long LUT[char_count];
	long* LUT = calloc(char_count, sizeof(long));
	//printf("%p\n", (void*)LUT);
	int* levels = calloc(char_count, sizeof(int));

	int looplevel = 0;
	for(i=0; i<char_count; i++){
		//printf("%d: Loop level: %d\n", i, looplevel);
		switch(prog[i]){
			case '[':
				levels[i] = ++looplevel;
				break;
			case ']':
				levels[i] = -1*(looplevel--);
				break;
			default:
				break;
		}
	}

	//printIntArray(stdout, levels, char_count, "%d "); 
	
	if (looplevel){
		//bracket mismatch
		fprintf(stderr, "Bracket mismatch (last known level: %d, exiting)...\n", looplevel);
		fclose(ProgFile);
		return 1;
	}
	
	//make lookup table for brackets based on loop level list
	//Opening brackets get index of their closing counterpart, and vice-versa
	for(i=0; i<char_count; i++){
		if (levels[i] > 0){
			//printf("Found opening bracket: level %lld, character %d\n", LUT[i], i);
			int matching_bracket_id = -1*levels[i];
			//printf("finding %lld\n", matching_bracket_id);
			for (long b=(long)i; b<char_count; b++){
				//printf("b loop: b=%lld\n", b);
				if (levels[b] == matching_bracket_id){
					//printf("Found matching closer at position %lld\n", b);
					LUT[i] = b;
					LUT[b] = (long)i;
					break;
				}
			}
		}
	}

	free(levels);
	//printf("printing LUT:\n");
	//printLongArray(stdout, LUT, char_count, "%ld ");

	printf("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");	
	
	long memory_size = (long)(GROWTH_AMT);
	char* memory = malloc(memory_size);
	char* past_index = memory + memory_size;
	char* ptr = memory;
	char* max_mem_index = memory;
	long relative_max_mem_index = max_mem_index - memory;
	long inst_count = 0;
	char halt = FALSE;

	int times_resized = 0;
	int memory_accesses = 0;

#ifdef RAND_MEM
	printf("Randomizing memory...\n");
	//Loop through and randomize all memory
	for (int i=0; i < memory_size; i++){
		char rand_num = rand() % (UCHAR_MAX+1);
		//printf("Setting index %d to %u\n", i, (int)((unsigned char)rand_num));
		memory[i] = rand_num;
		//printf("Memory at %d is %x\n", i, ptr[i]);
	}
#endif
	
	//printf("Made it to program loop\n");
	DECLARE_TIMER(Timer);
	START_TIMER(Timer);
	for(long i=0; !sigint_received && !halt && i<char_count && ++inst_count != max_instructions; i++){
		//usleep(100000);
		
		//printf("%ld: %ld->%c (%d), mem ptr @ %d, memory: [", inst_count, i, prog[i], (int)prog[i], (int)(ptr - memory));
		//for (int m = 0; m <= relative_max_mem_index; ++m){
		//	printf("%d, ", (int)memory[m]);
		//}
		//printf("]\n");
		
		switch (prog[i]){
			case '>':
				//printf("Incrementing pointer\n");
				if (++ptr > max_mem_index){
					if (++relative_max_mem_index == max_memory){
						halt = TRUE;
						break;
					}
					//now reaching into memory never used before, might not even be malloced
					if (++max_mem_index == past_index){
						//realloc memory larger
						//printf("reallocing more memory\n");
						memory_size += GROWTH_AMT;
						times_resized++;

						char* mem_tmp = realloc(memory, memory_size);
						if (!mem_tmp){ //realloc failed, free original memory
							fprintf(stderr, "BrainFucked!!! (ran out of memory, exiting)\n");
							halt = TRUE;
							break;
						}
						unsigned long ptr_mmi_offset = ptr - memory;
						memory = mem_tmp;
						ptr = mem_tmp + ptr_mmi_offset;
						max_mem_index = ptr;
						relative_max_mem_index = max_mem_index - memory;
						past_index = mem_tmp + memory_size;
					}
#ifndef RAND_MEM
					//set new memory slot to 0
					*ptr = 0; 
#endif
				}//nothing else needs to be done
				break;
			case '<':
				//printf("Decrementing pointer\n");
				if (ptr == memory){
					fprintf(stderr, "BrainFucked!!! (memory index underflow, exiting)\n");
					halt = TRUE;
					break;
				}
				--ptr;
				break;
			case '+':
				++memory_accesses;
				//printf("Incrementing value at %ld\n", (ptr-memory));
				++*ptr;
				break;
			case '-':
				++memory_accesses;
				//printf("Decrementing value at %ld\n", (ptr-memory));
				--*ptr;
				break;
			case '['://if memory at pointer is 0, jump to command AFTER ending bracket
				++memory_accesses; 
				if (!(*ptr)){
					i = LUT[i];
				}	
				break;
			case ']'://jump to complimentary opening bracket if pointer is non-zero
				++memory_accesses;
				if (*ptr){
					i = LUT[i];
				}	
				break;
			case '.':
				++memory_accesses;
				fputc(*ptr, OutFile);
				fflush(OutFile);
				break;
			case ',':
				++memory_accesses;
				if ((*ptr=getc(InFile)) == EOF){
					fprintf(stderr, "EOF reached in input stream, exiting...\n");
					halt = TRUE;
				}
				break;
			default:
				//ignore any other input
				break;
		}	
	}
	STOP_TIMER(Timer);
	PRINT_TIMER(Timer);
	
	printf("\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
	
	fprintf(stdout, "Memory used: %ld\n", (long)(max_mem_index-memory+1));
	fprintf(stdout, "# instructions: %lu\n", inst_count);
	
#ifdef EN_TIME
	fprintf(stdout, "(%lu inst/sec)\n", 
		(unsigned long)(inst_count/((double)Timer.Elapsed/ (double)CLOCKS_PER_SEC)));
#endif

	fprintf(stdout, "# of times memory resized: %d\n", times_resized);
	fprintf(stdout, "# of memory accesses: %d\n", memory_accesses);
	fprintf(stdout, "%% of instructions that access memory: %0.1f%%\n", ((float)memory_accesses*100)/((float)inst_count));
	
	free(prog);
	free(LUT);
	free(memory);
	fclose(OutFile);
	fclose(InFile);
}

void sigintHandler(int sign_num){
	//signal(SIGINT, sigintHandler); //Re-install this function to handle SIGINT (DO NOT USE, prevents SIGINT from stopping the program the second time)
	//printf("SIGINT received\n");
	sigint_received = TRUE;
}

void printIntArray(FILE* outputstream, int* iArray, int len, char* fs){
	for (int i=0; i<len; i++){
		fprintf(outputstream, fs, iArray[i]);
	}
	fprintf(outputstream, "\n");
}

void printLongArray(FILE* outputstream, long* iArray, int len, char* fs){
	for (int i=0; i<len; i++){
		fprintf(outputstream, fs, iArray[i]);
	}
	fprintf(outputstream, "\n");
}

