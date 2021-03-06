#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>

void printLongArray(FILE* outputstream, long* iArray, int len, char* fs);
void printIntArray(FILE* outputstream, int* iArray, int len, char* fs);

int main(int argc, char* argv[]){
    
	char* prog_filename = NULL;
	char* output_filename = NULL;
	char coe_output = 0;
	unsigned int bus_width = 16;
	
	int arg_err = 0;
	
	int rc;
	int option_index = 0;
	char* getoptOptions = "p:o:b:c";

	struct option long_options[] = {
		{"program", 		required_argument,  0,  'p'},
		{"prog", 			required_argument, 	0, 	'p'},
		{"output", 			required_argument, 	0,	'o'},
		{"out", 			required_argument, 	0, 	'o'},
		{"busw",			optional_argument,	0,	'b'},
		{"coe",				no_argument, 		0,	'c'},
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
			case 'o':
				output_filename = optarg;
				break;
			case 'c':
				coe_output = 1;
				break;
			case 'b':
				bus_width = atoi(optarg);
				if (bus_width < 8 || bus_width > 64){
					fprintf(
						stderr, 
						"Bus width must be 8 or more bits, "
						"and no more than 64 bits.\n"
					);
					arg_err = 1;
				}
				break;
			case '?': //already handled
				break;
			default:
				fprintf(stderr, "Internal error: undefined option %0xX\n", rc);
				return 1;
		}
	}
	//printf("optind = %d, argc = %d, filename = %p\n", optind, argc, (void*)prog_filename);	
	if ((optind < argc) || prog_filename == NULL || output_filename == NULL || arg_err){
		//print usage shit
        	fprintf(
			stderr,
                	"Usage: ./%s -p[rog[ram]] <Program File> "
				"-o[ut[put]] <Output> [options]\n", 
			__FILE__
		);

		fprintf(stderr, "Options:\n");
		fprintf(
			stderr, 
			"\t-c\texport in COE format (Verilog memory init file). "
			"Default is logisim v2 raw image.\n");
		fprintf(stderr, "\t-b[usw] <n>\tmake ROM with instruction width n.\n");
		
		fflush(stderr);
		return 1;
	}
	
	//printf("opening %s...\n", prog_filename);
	FILE* ProgFile = fopen(prog_filename, "r");
	if (ProgFile == NULL){
		fprintf(stderr, "File open failed on line %d!\n", __LINE__);
		return 1;
	}

	FILE* OutFile = fopen(output_filename, "w"); //overwrite mode
	if (OutFile == NULL){
		fprintf(stderr, "File open failed on line %d!\n", __LINE__);
		return 1;
	}

	if (coe_output){
		fprintf(OutFile, "memory_initialization_radix=16;\nmemory_initialization_vector=");
	} else {
		fprintf(OutFile, "v2.0 raw\n");
	}

	char ch;
	
	//count number of characters in file
	int char_count = 2;
	while ((ch = fgetc(ProgFile)) != EOF){
		//putchar(ch);
		if (ch == '>' || ch == '<' || ch == '+' || ch == '-' || \
			ch == '[' || ch == ']' || ch == '.' || ch == ','){
			char_count++;
#ifdef INPUT_HACK
			//remnant of an old hack i needed where trying to do output or arithmetic on a freshly received character (last instruction) would cause a race condition.
			if (ch == ','){
				char_count += 2;
			}
#endif
			//putchar('!');
		}
	}
	rewind(ProgFile);
	printf("Number of valid characters in file: %d\n", char_count);
	
	//read into memory
	char prog[char_count];
	memset(prog, 'n', char_count*sizeof(char));
	//printf("%s\n", prog);
	int i = 0;
	
	//add useless pointer movement to start of program to allow memory to warm up
	prog[i++] = '>';
	prog[i++] = '<';
	
	while ((ch = fgetc(ProgFile)) != EOF){
		//putchar(ch);
		if (ch == '>' || ch == '<' || ch == '+' || ch == '-' || \
			ch == '[' || ch == ']' || ch == '.' || ch == ','){
			prog[i++] = ch;
#ifdef INPUT_HACK
			if (ch == ','){
				prog[i++] = '>';
				prog[i++] = '<';
			}
#endif
			//putchar('!');
		}
	}
	fclose(ProgFile);

		
	
	//build loop list
	int LUT[char_count];
	int levels[char_count];
	memset(LUT, 0, char_count*sizeof(int));
	memset(levels, 0, char_count*sizeof(int));
	//printInt64Array(stdout, metas, char_count, "%lld "); 

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
	//part 1: opening brackets get index of their closing counterpart
	for(i=0; i<char_count; i++){
		if (levels[i] > 0){
			//printf("Found opening bracket: level %lld, character %d\n", metas[i], i);
			int matching_bracket_id = -1*levels[i];
			//printf("finding %lld\n", matching_bracket_id);
			for (int b=i; b<char_count; b++){
				//printf("b loop: b=%lld\n", b);
				if (levels[b] == matching_bracket_id){
					//printf("Found matching closer at position %lld\n", b);
					LUT[i] = b+1;
					LUT[b] = i;
					break;
				}
			}
		}
	}

	//printIntArray(stdout, LUT, char_count, "%d "); 
	/*
	//part 2: closing brackets get vice versa
	for(int i=0; i<char_count; i++){
		printf("Loop: i=%d\n", i);
		if (metas[i] > 0){
			printf("Found bracket: points to index %d\n", metas[i]);
			metas[metas[i]-1] = i;
		}
	}*/
	//printf("printing metas:\n");
	//printIntArray(stdout, metas, char_count, "%x ");
	
	char format_str[16];
	sprintf(format_str, "%%0%uX ", (bus_width-1)/4 + 1);

	uint64_t com = 0;
	for(int i=0; i<char_count; i++){
		//printf("Loop: i=%d\n", i);
		switch (prog[i]){
			case '>':
				com = 0x0000;
				break;
			case '<':
				com = 0x0001; 
				break;
			case '+':
				com = 0x0002; 
				break;
			case '-':
				com = 0x0003; 
				break;
			case '['://if pointer is 0, jump to command AFTER ending bracket 
				//printf("Got a [\n");
				com = (LUT[i] << 3) | 0x0004;
				if (com >> 3 != LUT[i]){
					fprintf(stderr, 
						"Error: ROM data width (%d) not large enough "
						"to hold jump value %x\n", bus_width, LUT[i]
					);
				}
				break;
			case ']'://jump to complimentary opening bracket
				//printf("Got a ]: metas[i]=%d\n", metas[i]);
				com = (LUT[i] << 3) | 0x0005;
				if (com >> 3 != LUT[i]){
					fprintf(stderr, 
						"Error: ROM data width (%d) not large enough "
						"to hold jump value %x\n", bus_width, LUT[i]
					);
				}
				break;
			case '.':
				com = 0x0006; 
				break;
			case ',':
				com = 0x0007; 
				break;
			default:
				//ignore any other input
				break;
		}
		fprintf(OutFile, format_str, com);
	}

	//generate an all-1s command
	com = 0;
	for (int i = 0; i < bus_width; ++i){
		com |= 1 << i;
	}

	fprintf(OutFile, format_str, com);
	
	if (coe_output){
		fprintf(OutFile, ";\n");
	}

	fclose(OutFile);
}

/*void printProgState(Program* prog){
	printf("%p --> %d\n", (void*)prog->ptr, *(prog->ptr));
}*/

void printIntArray(FILE* outputstream, int* iArray, int len, char* fs){
	for (int i=0; i<len; i++){
		fprintf(outputstream, fs, iArray[i]);
	}
	fprintf(outputstream, "\n\n");
}

void printLongArray(FILE* outputstream, long* iArray, int len, char* fs){
	for (int i=0; i<len; i++){
		fprintf(outputstream, fs, iArray[i]);
	}
	fprintf(outputstream, "\n\n");
}

