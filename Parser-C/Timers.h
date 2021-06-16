/*************************************************************************
* Timers.h - Instrumentation Macros Module  - Student file
*
* The timing instrumentation macros can be globally enabled by setting 
* the variable EN_TIME (ENable TIMErs) in the compiler command line, e.g., 
* use "gcc -DEN_TIME...." to enable the timers when needed.
* A compiler warning will be issued when the timers are enabled.  
* Note: All timing output should be directed to stderr.
*
*  10/08/2016   R. Repka    Fixed C++ struct warnings 
*  12/03/2016   R. Repka    Added semicolon to DECLARE_TIMER
**************************************************************************/
#ifndef _TIMERS_H_
#define _TIMERS_H_
	#if defined(EN_TIME)
		#include <time.h>
	/* #endif */

    struct timerDetails {                                                    
      clock_t Start;    /* Start Time   - set when the timer is started */
      clock_t Stop;     /* Stop Time    - set when the timer is stopped */
      clock_t Elapsed;  /* Elapsed Time - Accumulated when the timer is stopped */
      int State;        /* Timer State  - 0=stopped / 1=running */
    }; /* Elapsed Time and State must be initialized to zero */

	/* #if defined(EN_TIME) */
  		#define DECLARE_TIMER(A)                                                    \
    		struct timerDetails                                                      \
     		A = /* Elapsed Time and State must be initialized to zero */             \
      		{                                                                       \
      			/* Start   = */ 0,                                                      \
      			/* Stop    = */ 0,                                                      \
      			/* Elapsed = */ 0,                                                      \
      			/* State   = */ 0,                                                      \
      		}; /* Timer has been declared and defined,   ;  IS required */
      
		/* Write the timing macros here */

		#define START_TIMER(A) 											\
			/*printf("Starting Timer "#A"...\n");*/							\
			if (A.State){												\
				fprintf(stderr, "Error: Timer "#A" already running.\n");\
			} else {													\
				A.State = 1;											\
				A.Start = clock();										\
			}
		
		#define RESET_TIMER(A)	\
			A.Elapsed = 0

		#define STOP_TIMER(A)										\
			A.Stop = clock();										\
			if (!A.State){											\
				fprintf(stderr, "Error: Timer "#A" not running.\n");\
			} else {												\
				A.Elapsed += A.Stop - A.Start;						\
				A.State = 0;										\
			}														\
			/*printf("Stopped Timer "#A".\n");*/		

		#define PRINT_TIMER(A)									\
			if (A.State){										\
				STOP_TIMER(A);									\
				printf("Elapsed CPU Time ("#A") = %g sec.\n",	\
					(double)A.Elapsed/ (double)CLOCKS_PER_SEC);	\
				START_TIMER(A);									\
			} else {											\
				printf("Elapsed CPU Time ("#A") = %g sec.\n",   \
					(double)A.Elapsed/ (double)CLOCKS_PER_SEC);	\
			}	
		
		#define PRINT_RTIMER(A,R)									\
			if (A.State){											\
                STOP_TIMER(A);										\
                printf("Elapsed CPU Time ("#A") = %g sec.\n",       \
                	(double)A.Elapsed/ (((double)CLOCKS_PER_SEC)*R));	\
                START_TIMER(A);										\
			} else {												\
                printf("Elapsed CPU Time ("#A") = %g sec.\n",       \
                    (double)A.Elapsed/ (((double)CLOCKS_PER_SEC)*R));	\
            }
		
		#define DECLARE_REPEAT_VAR(V)	\
			int V

		#define BEGIN_REPEAT_TIMING(R, V)	\
			for (V=0; V<R; V++){			\
		
		#define END_REPEAT_TIMING\
			}

	#else /* EN_TIME not defined, make macros empty */
		#define DECLARE_TIMER(A)
		#define START_TIMER(A)
		#define	RESET_TIMER(A)
		#define STOP_TIMER(A)
		#define PRINT_TIMER(A)
		#define PRINT_RTIMER(A,R)
		#define DECLARE_REPEAT_VAR(V)
		#define BEGIN_REPEAT_TIMING(R,V)
		#define END_REPEAT_TIMING
	#endif /* end EN_TIME check */
#endif /* _TIMERS_H_ */
