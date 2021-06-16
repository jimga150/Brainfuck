  					TTL Lab 7 prelab
;****************************************************************
;
;BrainFuck Template
;
;---------------------------------------------------------------
;Keil Template for KL46
;R. W. Melton
;September 25, 2017
;****************************************************************
;Assembler directives
            THUMB
            OPT    64  ;Turn on listing macro expansions
;****************************************************************
;Include files
            GET  MKL46Z4.s     ;Included by start.s
            OPT  1   ;Turn on listing
;****************************************************************
;EQUates

;Size of “memory” in BrainFuck
MEM_SIZE	EQU	3000

;String constants
CR			EQU	0x0D
LF			EQU	0x0A
Null		EQU	0x00

;---------------------------------------------------------------
;PORTx_PCRn (Port x pin control register n [for pin n])
;___->10-08:Pin mux control (select 0 to 8)
;Use provided PORT_PCR_MUX_SELECT_2_MASK
;---------------------------------------------------------------
;Port A
PORT_PCR_SET_PTA1_UART0_RX  EQU  (PORT_PCR_ISF_MASK :OR: \
                                  PORT_PCR_MUX_SELECT_2_MASK)
PORT_PCR_SET_PTA2_UART0_TX  EQU  (PORT_PCR_ISF_MASK :OR: \
                                  PORT_PCR_MUX_SELECT_2_MASK)
;---------------------------------------------------------------
;SIM_SCGC4
;1->10:UART0 clock gate control (enabled)
;Use provided SIM_SCGC4_UART0_MASK
;---------------------------------------------------------------
;SIM_SCGC5
;1->09:Port A clock gate control (enabled)
;Use provided SIM_SCGC5_PORTA_MASK
;---------------------------------------------------------------
;SIM_SOPT2
;01=27-26:UART0SRC=UART0 clock source select
;         (PLLFLLSEL determines MCGFLLCLK' or MCGPLLCLK/2)
; 1=   16:PLLFLLSEL=PLL/FLL clock select (MCGPLLCLK/2)
SIM_SOPT2_UART0SRC_MCGPLLCLK  EQU  \
                                 (1 << SIM_SOPT2_UART0SRC_SHIFT)
SIM_SOPT2_UART0_MCGPLLCLK_DIV2 EQU \
    (SIM_SOPT2_UART0SRC_MCGPLLCLK :OR: SIM_SOPT2_PLLFLLSEL_MASK)
;---------------------------------------------------------------
;SIM_SOPT5
; 0->   16:UART0 open drain enable (disabled)
; 0->   02:UART0 receive data select (UART0_RX)
;00->01-00:UART0 transmit data select source (UART0_TX)
SIM_SOPT5_UART0_EXTERN_MASK_CLEAR  EQU  \
                               (SIM_SOPT5_UART0ODE_MASK :OR: \
                                SIM_SOPT5_UART0RXSRC_MASK :OR: \
                                SIM_SOPT5_UART0TXSRC_MASK)
;---------------------------------------------------------------
;UART0_BDH
;    0->  7:LIN break detect IE (disabled)
;    0->  6:RxD input active edge IE (disabled)
;    0->  5:Stop bit number select (1)
;00001->4-0:SBR[12:0] (UART0CLK / [9600 * (OSR + 1)]) 
;UART0CLK is MCGPLLCLK/2
;MCGPLLCLK is 96 MHz
;MCGPLLCLK/2 is 48 MHz
;SBR = 48 MHz / (9600 * 16) = 312.5 --> 312 = 0x138
UART0_BDH_9600  EQU  0x01
;---------------------------------------------------------------
;UART0_BDL
;0x38->7-0:SBR[7:0] (UART0CLK / [9600 * (OSR + 1)])
;UART0CLK is MCGPLLCLK/2
;MCGPLLCLK is 96 MHz
;MCGPLLCLK/2 is 48 MHz
;SBR = 48 MHz / (9600 * 16) = 312.5 --> 312 = 0x138
UART0_BDL_9600  EQU  0x38
;---------------------------------------------------------------
;UART0_C1
;0-->7:LOOPS=loops select (normal)
;0-->6:DOZEEN=doze enable (disabled)
;0-->5:RSRC=receiver source select (internal--no effect LOOPS=0)
;0-->4:M=9- or 8-bit mode select 
;        (1 start, 8 data [lsb first], 1 stop)
;0-->3:WAKE=receiver wakeup method select (idle)
;0-->2:IDLE=idle line type select (idle begins after start bit)
;0-->1:PE=parity enable (disabled)
;0-->0:PT=parity type (even parity--no effect PE=0)
UART0_C1_8N1  EQU  0x00
;---------------------------------------------------------------
;UART0_C2
;0-->7:TIE=transmit IE for TDRE (disabled)
;0-->6:TCIE=transmission complete IE for TC (disabled)
;0-->5:RIE=receiver IE for RDRF (disabled)
;0-->4:ILIE=idle line IE for IDLE (disabled)
;1-->3:TE=transmitter enable (enabled)
;1-->2:RE=receiver enable (enabled)
;0-->1:RWU=receiver wakeup control (normal)
;0-->0:SBK=send break (disabled, normal)
UART0_C2_T_R  EQU  (UART0_C2_TE_MASK :OR: UART0_C2_RE_MASK)
;---------------------------------------------------------------
;UART0_C3
;0-->7:R8T9=9th data bit for receiver (not used M=0)
;           10th data bit for transmitter (not used M10=0)
;0-->6:R9T8=9th data bit for transmitter (not used M=0)
;           10th data bit for receiver (not used M10=0)
;0-->5:TXDIR=UART_TX pin direction in single-wire mode
;            (no effect LOOPS=0)
;0-->4:TXINV=transmit data inversion (not inverted)
;0-->3:ORIE=overrun IE for OR (disabled)
;0-->2:NEIE=noise error IE for NF (disabled)
;0-->1:FEIE=framing error IE for FE (disabled)
;0-->0:PEIE=parity error IE for PF (disabled)
UART0_C3_NO_TXINV  EQU  0x00
;---------------------------------------------------------------
;UART0_C4
;    0-->  7:MAEN1=match address mode enable 1 (disabled)
;    0-->  6:MAEN2=match address mode enable 2 (disabled)
;    0-->  5:M10=10-bit mode select (not selected)
;01111-->4-0:OSR=over sampling ratio (16)
;               = 1 + OSR for 3 <= OSR <= 31
;               = 16 for 0 <= OSR <= 2 (invalid values)
UART0_C4_OSR_16           EQU  0x0F
UART0_C4_NO_MATCH_OSR_16  EQU  UART0_C4_OSR_16
;---------------------------------------------------------------
;UART0_C5
;  0-->  7:TDMAE=transmitter DMA enable (disabled)
;  0-->  6:Reserved; read-only; always 0
;  0-->  5:RDMAE=receiver full DMA enable (disabled)
;000-->4-2:Reserved; read-only; always 0
;  0-->  1:BOTHEDGE=both edge sampling (rising edge only)
;  0-->  0:RESYNCDIS=resynchronization disable (enabled)
UART0_C5_NO_DMA_SSR_SYNC  EQU  0x00
;---------------------------------------------------------------
;UART0_S1
;0-->7:TDRE=transmit data register empty flag; read-only
;0-->6:TC=transmission complete flag; read-only
;0-->5:RDRF=receive data register full flag; read-only
;1-->4:IDLE=idle line flag; write 1 to clear (clear)
;1-->3:OR=receiver overrun flag; write 1 to clear (clear)
;1-->2:NF=noise flag; write 1 to clear (clear)
;1-->1:FE=framing error flag; write 1 to clear (clear)
;1-->0:PF=parity error flag; write 1 to clear (clear)
UART0_S1_CLEAR_FLAGS  EQU  0x1F
;---------------------------------------------------------------
;UART0_S2
;1-->7:LBKDIF=LIN break detect interrupt flag (clear)
;             write 1 to clear
;1-->6:RXEDGIF=RxD pin active edge interrupt flag (clear)
;              write 1 to clear
;0-->5:(reserved); read-only; always 0
;0-->4:RXINV=receive data inversion (disabled)
;0-->3:RWUID=receive wake-up idle detect
;0-->2:BRK13=break character generation length (10)
;0-->1:LBKDE=LIN break detect enable (disabled)
;0-->0:RAF=receiver active flag; read-only
UART0_S2_NO_RXINV_BRK10_NO_LBKDETECT_CLEAR_FLAGS  EQU  0xC0
;---------------------------------------------------------------
;****************************************************************
;Program
;Linker requires Reset_Handler
            AREA    MyCode,CODE,READONLY
            ENTRY
            EXPORT  Reset_Handler
            IMPORT  Startup
			EXPORT	PutChar
			EXPORT	Init_UART0_Polling
Reset_Handler  PROC  {},{}
main
;---------------------------------------------------------------
;Mask interrupts
            CPSID   I
;KL46 system startup with 48-MHz system clock
            BL      Startup
;---------------------------------------------------------------
;>>>>> begin main program code <<<<<            
            BL		Init_UART0_Polling  ;Initialize
            LDR		R1,=Memory
			LDR		R0,=MEM_SIZE
			ADDS	R2,R0,R1
			BL		Clear_Mem
            B		Start
			LTORG
Start		NOP

            ;begin the program here: R1 always holds the current pointer, R0 is
            ;reserved for I/O into PutChar, PutStringSB, and GetChar, and R2 is
            ;used for intermediate storage.

			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_0
			LDR		R0,=End_OF
			BX		R0
C_0		NOP
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#8
			STRB	R0,[R1,#0]
W_0		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_0
			B		A_0
BE_0		LDR		R0,=E_0
			BX		R0
A_0		NOP
			CMP		R1,#0
			BNE		C_1
			LDR		R0,=End_UF
			BX		R0
C_1		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#4
			STRB	R0,[R1,#0]
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_2
			LDR		R0,=End_OF
			BX		R0
C_2		NOP
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#6
			STRB	R0,[R1,#0]
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_3
			LDR		R0,=End_OF
			BX		R0
C_3		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_0
B_0		BX		R0
E_0		NOP
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#1
			STRB	R0,[R1,#0]
			CMP		R1,#0
			BNE		C_4
			LDR		R0,=End_UF
			BX		R0
C_4		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#3
			STRB	R0,[R1,#0]
W_1		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_1
			B		A_1
BE_1		LDR		R0,=E_1
			BX		R0
A_1		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_5
			LDR		R0,=End_OF
			BX		R0
C_5		NOP
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#1
			STRB	R0,[R1,#0]
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_6
			LDR		R0,=End_OF
			BX		R0
C_6		NOP
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#1
			STRB	R0,[R1,#0]
			CMP		R1,#0
			BNE		C_7
			LDR		R0,=End_UF
			BX		R0
C_7		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_1
B_1		BX		R0
E_1		NOP
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_8
			LDR		R0,=End_OF
			BX		R0
C_8		NOP
W_2		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_2
			B		A_2
BE_2		LDR		R0,=E_2
			BX		R0
A_2		NOP
			CMP		R1,#0
			BNE		C_9
			LDR		R0,=End_UF
			BX		R0
C_9		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#1
			STRB	R0,[R1,#0]
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_10
			LDR		R0,=End_OF
			BX		R0
C_10		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_2
B_2		BX		R0
E_2		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_11
			LDR		R0,=End_OF
			BX		R0
C_11		NOP
			LDR		R0,=input_mes
			BL		PutStringSB	
			BL		GetChar
			BL		PutChar
			STRB	R0,[R1,#0]
			LDR		R0,=CRLF
			BL		PutStringSB
W_3		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_3
			B		A_3
BE_3		LDR		R0,=E_3
			BX		R0
A_3		NOP
			CMP		R1,#0
			BNE		C_12
			LDR		R0,=End_UF
			BX		R0
C_12		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			ADDS	R0,R0,#1
			STRB	R0,[R1,#0]
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_13
			LDR		R0,=End_OF
			BX		R0
C_13		NOP
W_4		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_4
			B		A_4
BE_4		LDR		R0,=E_4
			BX		R0
A_4		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#10
			STRB	R0,[R1,#0]
W_5		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_5
			B		A_5
BE_5		LDR		R0,=E_5
			BX		R0
A_5		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#22
			STRB	R0,[R1,#0]
W_6		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_6
			B		A_6
BE_6		LDR		R0,=E_6
			BX		R0
A_6		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_7		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_7
			B		A_7
BE_7		LDR		R0,=E_7
			BX		R0
A_7		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_8		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_8
			B		A_8
BE_8		LDR		R0,=E_8
			BX		R0
A_8		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#4
			STRB	R0,[R1,#0]
W_9		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_9
			B		A_9
BE_9		LDR		R0,=E_9
			BX		R0
A_9		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_10		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_10
			B		A_10
BE_10		LDR		R0,=E_10
			BX		R0
A_10		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_11		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_11
			B		A_11
BE_11		LDR		R0,=E_11
			BX		R0
A_11		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_12		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_12
			B		A_12
BE_12		LDR		R0,=E_12
			BX		R0
A_12		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#3
			STRB	R0,[R1,#0]
W_13		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_13
			B		A_13
BE_13		LDR		R0,=E_13
			BX		R0
A_13		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_14		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_14
			B		A_14
BE_14		LDR		R0,=E_14
			BX		R0
A_14		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_15		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_15
			B		A_15
BE_15		LDR		R0,=E_15
			BX		R0
A_15		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_16		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_16
			B		A_16
BE_16		LDR		R0,=E_16
			BX		R0
A_16		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_17		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_17
			B		A_17
BE_17		LDR		R0,=E_17
			BX		R0
A_17		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_18		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_18
			B		A_18
BE_18		LDR		R0,=E_18
			BX		R0
A_18		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_19		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_19
			B		A_19
BE_19		LDR		R0,=E_19
			BX		R0
A_19		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_20		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_20
			B		A_20
BE_20		LDR		R0,=E_20
			BX		R0
A_20		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_21		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_21
			B		A_21
BE_21		LDR		R0,=E_21
			BX		R0
A_21		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_22		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_22
			B		A_22
BE_22		LDR		R0,=E_22
			BX		R0
A_22		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_23		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_23
			B		A_23
BE_23		LDR		R0,=E_23
			BX		R0
A_23		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_24		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_24
			B		A_24
BE_24		LDR		R0,=E_24
			BX		R0
A_24		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_25		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_25
			B		A_25
BE_25		LDR		R0,=E_25
			BX		R0
A_25		NOP
			B		L_0
			LTORG
L_0		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_26		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_26
			B		A_26
BE_26		LDR		R0,=E_26
			BX		R0
A_26		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_27		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_27
			B		A_27
BE_27		LDR		R0,=E_27
			BX		R0
A_27		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_28		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_28
			B		A_28
BE_28		LDR		R0,=E_28
			BX		R0
A_28		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#2
			STRB	R0,[R1,#0]
W_29		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_29
			B		A_29
BE_29		LDR		R0,=E_29
			BX		R0
A_29		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#2
			STRB	R0,[R1,#0]
W_30		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_30
			B		A_30
BE_30		LDR		R0,=E_30
			BX		R0
A_30		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_31		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_31
			B		A_31
BE_31		LDR		R0,=E_31
			BX		R0
A_31		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_32		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_32
			B		A_32
BE_32		LDR		R0,=E_32
			BX		R0
A_32		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_33		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_33
			B		A_33
BE_33		LDR		R0,=E_33
			BX		R0
A_33		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_34		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_34
			B		A_34
BE_34		LDR		R0,=E_34
			BX		R0
A_34		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_35		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_35
			B		A_35
BE_35		LDR		R0,=E_35
			BX		R0
A_35		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_36		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_36
			B		A_36
BE_36		LDR		R0,=E_36
			BX		R0
A_36		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_37		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_37
			B		A_37
BE_37		LDR		R0,=E_37
			BX		R0
A_37		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_38		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_38
			B		A_38
BE_38		LDR		R0,=E_38
			BX		R0
A_38		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_39		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_39
			B		A_39
BE_39		LDR		R0,=E_39
			BX		R0
A_39		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_40		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_40
			B		A_40
BE_40		LDR		R0,=E_40
			BX		R0
A_40		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_41		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_41
			B		A_41
BE_41		LDR		R0,=E_41
			BX		R0
A_41		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_42		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_42
			B		A_42
BE_42		LDR		R0,=E_42
			BX		R0
A_42		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_43		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_43
			B		A_43
BE_43		LDR		R0,=E_43
			BX		R0
A_43		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_44		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_44
			B		A_44
BE_44		LDR		R0,=E_44
			BX		R0
A_44		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_45		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_45
			B		A_45
BE_45		LDR		R0,=E_45
			BX		R0
A_45		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_46		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_46
			B		A_46
BE_46		LDR		R0,=E_46
			BX		R0
A_46		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_47		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_47
			B		A_47
BE_47		LDR		R0,=E_47
			BX		R0
A_47		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_48		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_48
			B		A_48
BE_48		LDR		R0,=E_48
			BX		R0
A_48		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_49		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_49
			B		A_49
BE_49		LDR		R0,=E_49
			BX		R0
A_49		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_50		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_50
			B		A_50
BE_50		LDR		R0,=E_50
			BX		R0
A_50		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_51		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_51
			B		A_51
BE_51		LDR		R0,=E_51
			BX		R0
A_51		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_52		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_52
			B		A_52
BE_52		LDR		R0,=E_52
			BX		R0
A_52		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_53		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_53
			B		A_53
BE_53		LDR		R0,=E_53
			BX		R0
A_53		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_54		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_54
			B		A_54
BE_54		LDR		R0,=E_54
			BX		R0
A_54		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_55		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_55
			B		A_55
BE_55		LDR		R0,=E_55
			BX		R0
A_55		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_56		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_56
			B		A_56
BE_56		LDR		R0,=E_56
			BX		R0
A_56		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
W_57		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_57
			B		A_57
BE_57		LDR		R0,=E_57
			BX		R0
A_57		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#5
			STRB	R0,[R1,#0]
			CMP		R1,#0
			BNE		C_14
			LDR		R0,=End_UF
			BX		R0
C_14		SUBS	R1,R1,#1
W_58		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_58
			B		A_58
BE_58		LDR		R0,=E_58
			BX		R0
A_58		NOP
			CMP		R1,#0
			BNE		C_15
			LDR		R0,=End_UF
			BX		R0
C_15		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_16
			LDR		R0,=End_UF
			BX		R0
C_16		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_17
			LDR		R0,=End_OF
			BX		R0
C_17		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_18
			LDR		R0,=End_UF
			BX		R0
C_18		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_19
			LDR		R0,=End_OF
			BX		R0
C_19		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			B		L_1
			LTORG
L_1		NOP
			LDR		R0,=W_58
B_58		BX		R0
E_58		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_20
			LDR		R0,=End_OF
			BX		R0
C_20		NOP
			LDR		R0,=W_57
B_57		BX		R0
E_57		NOP
			CMP		R1,#0
			BNE		C_21
			LDR		R0,=End_UF
			BX		R0
C_21		SUBS	R1,R1,#1
W_59		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_59
			B		A_59
BE_59		LDR		R0,=E_59
			BX		R0
A_59		NOP
			CMP		R1,#0
			BNE		C_22
			LDR		R0,=End_UF
			BX		R0
C_22		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_23
			LDR		R0,=End_OF
			BX		R0
C_23		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_24
			LDR		R0,=End_OF
			BX		R0
C_24		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_59
B_59		BX		R0
E_59		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_25
			LDR		R0,=End_OF
			BX		R0
C_25		NOP
			LDR		R0,=W_56
B_56		BX		R0
E_56		NOP
			CMP		R1,#0
			BNE		C_26
			LDR		R0,=End_UF
			BX		R0
C_26		SUBS	R1,R1,#1
W_60		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_60
			B		A_60
BE_60		LDR		R0,=E_60
			BX		R0
A_60		NOP
			CMP		R1,#0
			BNE		C_27
			LDR		R0,=End_UF
			BX		R0
C_27		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_28
			LDR		R0,=End_OF
			BX		R0
C_28		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_29
			LDR		R0,=End_UF
			BX		R0
C_29		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_30
			LDR		R0,=End_OF
			BX		R0
C_30		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_60
B_60		BX		R0
E_60		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_31
			LDR		R0,=End_OF
			BX		R0
C_31		NOP
			LDR		R0,=W_55
B_55		BX		R0
E_55		NOP
			CMP		R1,#0
			BNE		C_32
			LDR		R0,=End_UF
			BX		R0
C_32		SUBS	R1,R1,#1
W_61		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_61
			B		A_61
BE_61		LDR		R0,=E_61
			BX		R0
A_61		NOP
			CMP		R1,#0
			BNE		C_33
			LDR		R0,=End_UF
			BX		R0
C_33		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_34
			LDR		R0,=End_OF
			BX		R0
C_34		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_35
			LDR		R0,=End_UF
			BX		R0
C_35		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_36
			LDR		R0,=End_OF
			BX		R0
C_36		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_61
B_61		BX		R0
E_61		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_37
			LDR		R0,=End_OF
			BX		R0
C_37		NOP
			LDR		R0,=W_54
B_54		BX		R0
E_54		NOP
			CMP		R1,#0
			BNE		C_38
			LDR		R0,=End_UF
			BX		R0
C_38		SUBS	R1,R1,#1
W_62		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_62
			B		A_62
BE_62		LDR		R0,=E_62
			BX		R0
A_62		NOP
			CMP		R1,#0
			BNE		C_39
			LDR		R0,=End_UF
			BX		R0
C_39		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_40
			LDR		R0,=End_UF
			BX		R0
C_40		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_41
			LDR		R0,=End_OF
			BX		R0
C_41		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_62
B_62		BX		R0
E_62		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_42
			LDR		R0,=End_OF
			BX		R0
C_42		NOP
			LDR		R0,=W_53
B_53		BX		R0
E_53		NOP
			CMP		R1,#0
			BNE		C_43
			LDR		R0,=End_UF
			BX		R0
C_43		SUBS	R1,R1,#1
W_63		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_63
			B		A_63
BE_63		LDR		R0,=E_63
			BX		R0
A_63		NOP
			CMP		R1,#0
			BNE		C_44
			LDR		R0,=End_UF
			BX		R0
C_44		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_45
			LDR		R0,=End_UF
			BX		R0
C_45		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_46
			LDR		R0,=End_OF
			BX		R0
C_46		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_63
B_63		BX		R0
E_63		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_47
			LDR		R0,=End_OF
			BX		R0
C_47		NOP
			LDR		R0,=W_52
B_52		BX		R0
E_52		NOP
			CMP		R1,#0
			BNE		C_48
			LDR		R0,=End_UF
			BX		R0
C_48		SUBS	R1,R1,#1
W_64		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_64
			B		A_64
BE_64		LDR		R0,=E_64
			BX		R0
A_64		NOP
			CMP		R1,#0
			BNE		C_49
			LDR		R0,=End_UF
			BX		R0
C_49		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_50
			LDR		R0,=End_UF
			BX		R0
C_50		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_51
			LDR		R0,=End_OF
			BX		R0
C_51		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_64
B_64		BX		R0
E_64		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_52
			LDR		R0,=End_OF
			BX		R0
C_52		NOP
			LDR		R0,=W_51
B_51		BX		R0
E_51		NOP
			CMP		R1,#0
			BNE		C_53
			LDR		R0,=End_UF
			BX		R0
C_53		SUBS	R1,R1,#1
W_65		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_65
			B		A_65
BE_65		LDR		R0,=E_65
			BX		R0
A_65		NOP
			CMP		R1,#0
			BNE		C_54
			LDR		R0,=End_UF
			BX		R0
C_54		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_55
			LDR		R0,=End_OF
			BX		R0
C_55		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_65
B_65		BX		R0
E_65		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_56
			LDR		R0,=End_OF
			BX		R0
C_56		NOP
			LDR		R0,=W_50
B_50		BX		R0
E_50		NOP
			CMP		R1,#0
			BNE		C_57
			LDR		R0,=End_UF
			BX		R0
C_57		SUBS	R1,R1,#1
W_66		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_66
			B		A_66
BE_66		LDR		R0,=E_66
			BX		R0
A_66		NOP
			B		L_2
			LTORG
L_2		NOP
			CMP		R1,#0
			BNE		C_58
			LDR		R0,=End_UF
			BX		R0
C_58		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_59
			LDR		R0,=End_OF
			BX		R0
C_59		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_66
B_66		BX		R0
E_66		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_60
			LDR		R0,=End_OF
			BX		R0
C_60		NOP
			LDR		R0,=W_49
B_49		BX		R0
E_49		NOP
			CMP		R1,#0
			BNE		C_61
			LDR		R0,=End_UF
			BX		R0
C_61		SUBS	R1,R1,#1
W_67		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_67
			B		A_67
BE_67		LDR		R0,=E_67
			BX		R0
A_67		NOP
			CMP		R1,#0
			BNE		C_62
			LDR		R0,=End_UF
			BX		R0
C_62		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_63
			LDR		R0,=End_UF
			BX		R0
C_63		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_64
			LDR		R0,=End_OF
			BX		R0
C_64		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_65
			LDR		R0,=End_OF
			BX		R0
C_65		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_67
B_67		BX		R0
E_67		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_66
			LDR		R0,=End_OF
			BX		R0
C_66		NOP
			LDR		R0,=W_48
B_48		BX		R0
E_48		NOP
			CMP		R1,#0
			BNE		C_67
			LDR		R0,=End_UF
			BX		R0
C_67		SUBS	R1,R1,#1
W_68		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_68
			B		A_68
BE_68		LDR		R0,=E_68
			BX		R0
A_68		NOP
			CMP		R1,#0
			BNE		C_68
			LDR		R0,=End_UF
			BX		R0
C_68		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_69
			LDR		R0,=End_OF
			BX		R0
C_69		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_70
			LDR		R0,=End_UF
			BX		R0
C_70		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_71
			LDR		R0,=End_OF
			BX		R0
C_71		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_68
B_68		BX		R0
E_68		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_72
			LDR		R0,=End_OF
			BX		R0
C_72		NOP
			LDR		R0,=W_47
B_47		BX		R0
E_47		NOP
			CMP		R1,#0
			BNE		C_73
			LDR		R0,=End_UF
			BX		R0
C_73		SUBS	R1,R1,#1
W_69		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_69
			B		A_69
BE_69		LDR		R0,=E_69
			BX		R0
A_69		NOP
			CMP		R1,#0
			BNE		C_74
			LDR		R0,=End_UF
			BX		R0
C_74		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_75
			LDR		R0,=End_UF
			BX		R0
C_75		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_76
			LDR		R0,=End_OF
			BX		R0
C_76		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_77
			LDR		R0,=End_OF
			BX		R0
C_77		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_69
B_69		BX		R0
E_69		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_78
			LDR		R0,=End_OF
			BX		R0
C_78		NOP
			LDR		R0,=W_46
B_46		BX		R0
E_46		NOP
			CMP		R1,#0
			BNE		C_79
			LDR		R0,=End_UF
			BX		R0
C_79		SUBS	R1,R1,#1
W_70		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_70
			B		A_70
BE_70		LDR		R0,=E_70
			BX		R0
A_70		NOP
			CMP		R1,#0
			BNE		C_80
			LDR		R0,=End_UF
			BX		R0
C_80		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_81
			LDR		R0,=End_OF
			BX		R0
C_81		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_70
B_70		BX		R0
E_70		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_82
			LDR		R0,=End_OF
			BX		R0
C_82		NOP
			LDR		R0,=W_45
B_45		BX		R0
E_45		NOP
			CMP		R1,#0
			BNE		C_83
			LDR		R0,=End_UF
			BX		R0
C_83		SUBS	R1,R1,#1
W_71		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_71
			B		A_71
BE_71		LDR		R0,=E_71
			BX		R0
A_71		NOP
			CMP		R1,#0
			BNE		C_84
			LDR		R0,=End_UF
			BX		R0
C_84		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_85
			LDR		R0,=End_OF
			BX		R0
C_85		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_86
			LDR		R0,=End_OF
			BX		R0
C_86		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_71
B_71		BX		R0
E_71		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_87
			LDR		R0,=End_OF
			BX		R0
C_87		NOP
			LDR		R0,=W_44
B_44		BX		R0
E_44		NOP
			CMP		R1,#0
			BNE		C_88
			LDR		R0,=End_UF
			BX		R0
C_88		SUBS	R1,R1,#1
W_72		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_72
			B		A_72
BE_72		LDR		R0,=E_72
			BX		R0
A_72		NOP
			CMP		R1,#0
			BNE		C_89
			LDR		R0,=End_UF
			BX		R0
C_89		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_90
			LDR		R0,=End_OF
			BX		R0
C_90		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_72
B_72		BX		R0
E_72		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_91
			LDR		R0,=End_OF
			BX		R0
C_91		NOP
			LDR		R0,=W_43
B_43		BX		R0
E_43		NOP
			CMP		R1,#0
			BNE		C_92
			LDR		R0,=End_UF
			BX		R0
C_92		SUBS	R1,R1,#1
W_73		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_73
			B		A_73
BE_73		LDR		R0,=E_73
			BX		R0
A_73		NOP
			CMP		R1,#0
			BNE		C_93
			LDR		R0,=End_UF
			BX		R0
C_93		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_94
			LDR		R0,=End_UF
			BX		R0
C_94		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_95
			LDR		R0,=End_OF
			BX		R0
C_95		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_96
			LDR		R0,=End_OF
			BX		R0
C_96		NOP
			B		L_3
			LTORG
L_3		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_73
B_73		BX		R0
E_73		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_97
			LDR		R0,=End_OF
			BX		R0
C_97		NOP
			LDR		R0,=W_42
B_42		BX		R0
E_42		NOP
			CMP		R1,#0
			BNE		C_98
			LDR		R0,=End_UF
			BX		R0
C_98		SUBS	R1,R1,#1
W_74		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_74
			B		A_74
BE_74		LDR		R0,=E_74
			BX		R0
A_74		NOP
			CMP		R1,#0
			BNE		C_99
			LDR		R0,=End_UF
			BX		R0
C_99		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_100
			LDR		R0,=End_OF
			BX		R0
C_100		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_101
			LDR		R0,=End_UF
			BX		R0
C_101		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_102
			LDR		R0,=End_OF
			BX		R0
C_102		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_74
B_74		BX		R0
E_74		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_103
			LDR		R0,=End_OF
			BX		R0
C_103		NOP
			LDR		R0,=W_41
B_41		BX		R0
E_41		NOP
			CMP		R1,#0
			BNE		C_104
			LDR		R0,=End_UF
			BX		R0
C_104		SUBS	R1,R1,#1
W_75		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_75
			B		A_75
BE_75		LDR		R0,=E_75
			BX		R0
A_75		NOP
			CMP		R1,#0
			BNE		C_105
			LDR		R0,=End_UF
			BX		R0
C_105		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_106
			LDR		R0,=End_UF
			BX		R0
C_106		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_107
			LDR		R0,=End_OF
			BX		R0
C_107		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_75
B_75		BX		R0
E_75		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_108
			LDR		R0,=End_OF
			BX		R0
C_108		NOP
			LDR		R0,=W_40
B_40		BX		R0
E_40		NOP
			CMP		R1,#0
			BNE		C_109
			LDR		R0,=End_UF
			BX		R0
C_109		SUBS	R1,R1,#1
W_76		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_76
			B		A_76
BE_76		LDR		R0,=E_76
			BX		R0
A_76		NOP
			CMP		R1,#0
			BNE		C_110
			LDR		R0,=End_UF
			BX		R0
C_110		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_111
			LDR		R0,=End_OF
			BX		R0
C_111		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_76
B_76		BX		R0
E_76		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_112
			LDR		R0,=End_OF
			BX		R0
C_112		NOP
			LDR		R0,=W_39
B_39		BX		R0
E_39		NOP
			CMP		R1,#0
			BNE		C_113
			LDR		R0,=End_UF
			BX		R0
C_113		SUBS	R1,R1,#1
W_77		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_77
			B		A_77
BE_77		LDR		R0,=E_77
			BX		R0
A_77		NOP
			CMP		R1,#0
			BNE		C_114
			LDR		R0,=End_UF
			BX		R0
C_114		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_115
			LDR		R0,=End_OF
			BX		R0
C_115		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_77
B_77		BX		R0
E_77		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_116
			LDR		R0,=End_OF
			BX		R0
C_116		NOP
			LDR		R0,=W_38
B_38		BX		R0
E_38		NOP
			CMP		R1,#0
			BNE		C_117
			LDR		R0,=End_UF
			BX		R0
C_117		SUBS	R1,R1,#1
W_78		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_78
			B		A_78
BE_78		LDR		R0,=E_78
			BX		R0
A_78		NOP
			CMP		R1,#0
			BNE		C_118
			LDR		R0,=End_UF
			BX		R0
C_118		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_119
			LDR		R0,=End_OF
			BX		R0
C_119		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_120
			LDR		R0,=End_OF
			BX		R0
C_120		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_78
B_78		BX		R0
E_78		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_121
			LDR		R0,=End_OF
			BX		R0
C_121		NOP
			LDR		R0,=W_37
B_37		BX		R0
E_37		NOP
			CMP		R1,#0
			BNE		C_122
			LDR		R0,=End_UF
			BX		R0
C_122		SUBS	R1,R1,#1
W_79		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_79
			B		A_79
BE_79		LDR		R0,=E_79
			BX		R0
A_79		NOP
			CMP		R1,#0
			BNE		C_123
			LDR		R0,=End_UF
			BX		R0
C_123		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_124
			LDR		R0,=End_UF
			BX		R0
C_124		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_125
			LDR		R0,=End_OF
			BX		R0
C_125		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_126
			LDR		R0,=End_OF
			BX		R0
C_126		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_79
B_79		BX		R0
E_79		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_127
			LDR		R0,=End_OF
			BX		R0
C_127		NOP
			LDR		R0,=W_36
B_36		BX		R0
E_36		NOP
			CMP		R1,#0
			BNE		C_128
			LDR		R0,=End_UF
			BX		R0
C_128		SUBS	R1,R1,#1
W_80		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_80
			B		A_80
BE_80		LDR		R0,=E_80
			BX		R0
A_80		NOP
			CMP		R1,#0
			BNE		C_129
			LDR		R0,=End_UF
			BX		R0
C_129		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_130
			LDR		R0,=End_OF
			BX		R0
C_130		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_80
B_80		BX		R0
E_80		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_131
			LDR		R0,=End_OF
			BX		R0
C_131		NOP
			LDR		R0,=W_35
B_35		BX		R0
E_35		NOP
			CMP		R1,#0
			BNE		C_132
			LDR		R0,=End_UF
			BX		R0
C_132		SUBS	R1,R1,#1
W_81		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_81
			B		A_81
BE_81		LDR		R0,=E_81
			BX		R0
A_81		NOP
			CMP		R1,#0
			BNE		C_133
			LDR		R0,=End_UF
			BX		R0
C_133		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_134
			LDR		R0,=End_OF
			BX		R0
C_134		NOP
			B		L_4
			LTORG
L_4		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_135
			LDR		R0,=End_OF
			BX		R0
C_135		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_81
B_81		BX		R0
E_81		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_136
			LDR		R0,=End_OF
			BX		R0
C_136		NOP
			LDR		R0,=W_34
B_34		BX		R0
E_34		NOP
			CMP		R1,#0
			BNE		C_137
			LDR		R0,=End_UF
			BX		R0
C_137		SUBS	R1,R1,#1
W_82		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_82
			B		A_82
BE_82		LDR		R0,=E_82
			BX		R0
A_82		NOP
			CMP		R1,#0
			BNE		C_138
			LDR		R0,=End_UF
			BX		R0
C_138		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_139
			LDR		R0,=End_OF
			BX		R0
C_139		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_140
			LDR		R0,=End_UF
			BX		R0
C_140		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_141
			LDR		R0,=End_OF
			BX		R0
C_141		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_142
			LDR		R0,=End_OF
			BX		R0
C_142		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_82
B_82		BX		R0
E_82		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_143
			LDR		R0,=End_OF
			BX		R0
C_143		NOP
			LDR		R0,=W_33
B_33		BX		R0
E_33		NOP
			CMP		R1,#0
			BNE		C_144
			LDR		R0,=End_UF
			BX		R0
C_144		SUBS	R1,R1,#1
W_83		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_83
			B		A_83
BE_83		LDR		R0,=E_83
			BX		R0
A_83		NOP
			CMP		R1,#0
			BNE		C_145
			LDR		R0,=End_UF
			BX		R0
C_145		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_146
			LDR		R0,=End_OF
			BX		R0
C_146		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_147
			LDR		R0,=End_OF
			BX		R0
C_147		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_83
B_83		BX		R0
E_83		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_148
			LDR		R0,=End_OF
			BX		R0
C_148		NOP
			LDR		R0,=W_32
B_32		BX		R0
E_32		NOP
			CMP		R1,#0
			BNE		C_149
			LDR		R0,=End_UF
			BX		R0
C_149		SUBS	R1,R1,#1
W_84		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_84
			B		A_84
BE_84		LDR		R0,=E_84
			BX		R0
A_84		NOP
			CMP		R1,#0
			BNE		C_150
			LDR		R0,=End_UF
			BX		R0
C_150		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_151
			LDR		R0,=End_UF
			BX		R0
C_151		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_152
			LDR		R0,=End_OF
			BX		R0
C_152		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_84
B_84		BX		R0
E_84		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_153
			LDR		R0,=End_OF
			BX		R0
C_153		NOP
			LDR		R0,=W_31
B_31		BX		R0
E_31		NOP
			CMP		R1,#0
			BNE		C_154
			LDR		R0,=End_UF
			BX		R0
C_154		SUBS	R1,R1,#1
W_85		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_85
			B		A_85
BE_85		LDR		R0,=E_85
			BX		R0
A_85		NOP
			CMP		R1,#0
			BNE		C_155
			LDR		R0,=End_UF
			BX		R0
C_155		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_156
			LDR		R0,=End_UF
			BX		R0
C_156		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_157
			LDR		R0,=End_OF
			BX		R0
C_157		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_158
			LDR		R0,=End_UF
			BX		R0
C_158		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_159
			LDR		R0,=End_OF
			BX		R0
C_159		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_160
			LDR		R0,=End_OF
			BX		R0
C_160		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_85
B_85		BX		R0
E_85		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_161
			LDR		R0,=End_OF
			BX		R0
C_161		NOP
			LDR		R0,=W_30
B_30		BX		R0
E_30		NOP
			CMP		R1,#0
			BNE		C_162
			LDR		R0,=End_UF
			BX		R0
C_162		SUBS	R1,R1,#1
W_86		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_86
			B		A_86
BE_86		LDR		R0,=E_86
			BX		R0
A_86		NOP
			CMP		R1,#0
			BNE		C_163
			LDR		R0,=End_UF
			BX		R0
C_163		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_164
			LDR		R0,=End_UF
			BX		R0
C_164		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_165
			LDR		R0,=End_OF
			BX		R0
C_165		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_166
			LDR		R0,=End_OF
			BX		R0
C_166		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_86
B_86		BX		R0
E_86		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_167
			LDR		R0,=End_OF
			BX		R0
C_167		NOP
			LDR		R0,=W_29
B_29		BX		R0
E_29		NOP
			CMP		R1,#0
			BNE		C_168
			LDR		R0,=End_UF
			BX		R0
C_168		SUBS	R1,R1,#1
W_87		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_87
			B		A_87
BE_87		LDR		R0,=E_87
			BX		R0
A_87		NOP
			CMP		R1,#0
			BNE		C_169
			LDR		R0,=End_UF
			BX		R0
C_169		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_170
			LDR		R0,=End_OF
			BX		R0
C_170		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_171
			LDR		R0,=End_UF
			BX		R0
C_171		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_172
			LDR		R0,=End_OF
			BX		R0
C_172		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_87
B_87		BX		R0
E_87		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_173
			LDR		R0,=End_OF
			BX		R0
C_173		NOP
			B		L_5
			LTORG
L_5		NOP
			LDR		R0,=W_28
B_28		BX		R0
E_28		NOP
			CMP		R1,#0
			BNE		C_174
			LDR		R0,=End_UF
			BX		R0
C_174		SUBS	R1,R1,#1
W_88		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_88
			B		A_88
BE_88		LDR		R0,=E_88
			BX		R0
A_88		NOP
			CMP		R1,#0
			BNE		C_175
			LDR		R0,=End_UF
			BX		R0
C_175		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_176
			LDR		R0,=End_OF
			BX		R0
C_176		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_177
			LDR		R0,=End_UF
			BX		R0
C_177		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_178
			LDR		R0,=End_OF
			BX		R0
C_178		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_179
			LDR		R0,=End_UF
			BX		R0
C_179		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_180
			LDR		R0,=End_OF
			BX		R0
C_180		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_181
			LDR		R0,=End_OF
			BX		R0
C_181		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_88
B_88		BX		R0
E_88		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_182
			LDR		R0,=End_OF
			BX		R0
C_182		NOP
			LDR		R0,=W_27
B_27		BX		R0
E_27		NOP
			CMP		R1,#0
			BNE		C_183
			LDR		R0,=End_UF
			BX		R0
C_183		SUBS	R1,R1,#1
W_89		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_89
			B		A_89
BE_89		LDR		R0,=E_89
			BX		R0
A_89		NOP
			CMP		R1,#0
			BNE		C_184
			LDR		R0,=End_UF
			BX		R0
C_184		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_185
			LDR		R0,=End_OF
			BX		R0
C_185		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_186
			LDR		R0,=End_OF
			BX		R0
C_186		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_89
B_89		BX		R0
E_89		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_187
			LDR		R0,=End_OF
			BX		R0
C_187		NOP
			LDR		R0,=W_26
B_26		BX		R0
E_26		NOP
			CMP		R1,#0
			BNE		C_188
			LDR		R0,=End_UF
			BX		R0
C_188		SUBS	R1,R1,#1
W_90		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_90
			B		A_90
BE_90		LDR		R0,=E_90
			BX		R0
A_90		NOP
			CMP		R1,#0
			BNE		C_189
			LDR		R0,=End_UF
			BX		R0
C_189		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_190
			LDR		R0,=End_OF
			BX		R0
C_190		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_191
			LDR		R0,=End_OF
			BX		R0
C_191		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_90
B_90		BX		R0
E_90		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_192
			LDR		R0,=End_OF
			BX		R0
C_192		NOP
			LDR		R0,=W_25
B_25		BX		R0
E_25		NOP
			CMP		R1,#0
			BNE		C_193
			LDR		R0,=End_UF
			BX		R0
C_193		SUBS	R1,R1,#1
W_91		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_91
			B		A_91
BE_91		LDR		R0,=E_91
			BX		R0
A_91		NOP
			CMP		R1,#0
			BNE		C_194
			LDR		R0,=End_UF
			BX		R0
C_194		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_195
			LDR		R0,=End_OF
			BX		R0
C_195		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_196
			LDR		R0,=End_OF
			BX		R0
C_196		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_91
B_91		BX		R0
E_91		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_197
			LDR		R0,=End_OF
			BX		R0
C_197		NOP
			LDR		R0,=W_24
B_24		BX		R0
E_24		NOP
			CMP		R1,#0
			BNE		C_198
			LDR		R0,=End_UF
			BX		R0
C_198		SUBS	R1,R1,#1
W_92		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_92
			B		A_92
BE_92		LDR		R0,=E_92
			BX		R0
A_92		NOP
			CMP		R1,#0
			BNE		C_199
			LDR		R0,=End_UF
			BX		R0
C_199		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_200
			LDR		R0,=End_OF
			BX		R0
C_200		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_201
			LDR		R0,=End_OF
			BX		R0
C_201		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_92
B_92		BX		R0
E_92		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_202
			LDR		R0,=End_OF
			BX		R0
C_202		NOP
			LDR		R0,=W_23
B_23		BX		R0
E_23		NOP
			CMP		R1,#0
			BNE		C_203
			LDR		R0,=End_UF
			BX		R0
C_203		SUBS	R1,R1,#1
W_93		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_93
			B		A_93
BE_93		LDR		R0,=E_93
			BX		R0
A_93		NOP
			CMP		R1,#0
			BNE		C_204
			LDR		R0,=End_UF
			BX		R0
C_204		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_205
			LDR		R0,=End_OF
			BX		R0
C_205		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_206
			LDR		R0,=End_OF
			BX		R0
C_206		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_93
B_93		BX		R0
E_93		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_207
			LDR		R0,=End_OF
			BX		R0
C_207		NOP
			LDR		R0,=W_22
B_22		BX		R0
E_22		NOP
			CMP		R1,#0
			BNE		C_208
			LDR		R0,=End_UF
			BX		R0
C_208		SUBS	R1,R1,#1
W_94		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_94
			B		A_94
BE_94		LDR		R0,=E_94
			BX		R0
A_94		NOP
			CMP		R1,#0
			BNE		C_209
			LDR		R0,=End_UF
			BX		R0
C_209		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			B		L_6
			LTORG
L_6		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_210
			LDR		R0,=End_OF
			BX		R0
C_210		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_94
B_94		BX		R0
E_94		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_211
			LDR		R0,=End_OF
			BX		R0
C_211		NOP
			LDR		R0,=W_21
B_21		BX		R0
E_21		NOP
			CMP		R1,#0
			BNE		C_212
			LDR		R0,=End_UF
			BX		R0
C_212		SUBS	R1,R1,#1
W_95		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_95
			B		A_95
BE_95		LDR		R0,=E_95
			BX		R0
A_95		NOP
			CMP		R1,#0
			BNE		C_213
			LDR		R0,=End_UF
			BX		R0
C_213		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_214
			LDR		R0,=End_UF
			BX		R0
C_214		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_215
			LDR		R0,=End_OF
			BX		R0
C_215		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_95
B_95		BX		R0
E_95		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_216
			LDR		R0,=End_OF
			BX		R0
C_216		NOP
			LDR		R0,=W_20
B_20		BX		R0
E_20		NOP
			CMP		R1,#0
			BNE		C_217
			LDR		R0,=End_UF
			BX		R0
C_217		SUBS	R1,R1,#1
W_96		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_96
			B		A_96
BE_96		LDR		R0,=E_96
			BX		R0
A_96		NOP
			CMP		R1,#0
			BNE		C_218
			LDR		R0,=End_UF
			BX		R0
C_218		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_219
			LDR		R0,=End_UF
			BX		R0
C_219		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_220
			LDR		R0,=End_OF
			BX		R0
C_220		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_96
B_96		BX		R0
E_96		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_221
			LDR		R0,=End_OF
			BX		R0
C_221		NOP
			LDR		R0,=W_19
B_19		BX		R0
E_19		NOP
			CMP		R1,#0
			BNE		C_222
			LDR		R0,=End_UF
			BX		R0
C_222		SUBS	R1,R1,#1
W_97		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_97
			B		A_97
BE_97		LDR		R0,=E_97
			BX		R0
A_97		NOP
			CMP		R1,#0
			BNE		C_223
			LDR		R0,=End_UF
			BX		R0
C_223		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_224
			LDR		R0,=End_UF
			BX		R0
C_224		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_225
			LDR		R0,=End_OF
			BX		R0
C_225		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_97
B_97		BX		R0
E_97		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_226
			LDR		R0,=End_OF
			BX		R0
C_226		NOP
			LDR		R0,=W_18
B_18		BX		R0
E_18		NOP
			CMP		R1,#0
			BNE		C_227
			LDR		R0,=End_UF
			BX		R0
C_227		SUBS	R1,R1,#1
W_98		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_98
			B		A_98
BE_98		LDR		R0,=E_98
			BX		R0
A_98		NOP
			CMP		R1,#0
			BNE		C_228
			LDR		R0,=End_UF
			BX		R0
C_228		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_229
			LDR		R0,=End_UF
			BX		R0
C_229		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_230
			LDR		R0,=End_OF
			BX		R0
C_230		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_98
B_98		BX		R0
E_98		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_231
			LDR		R0,=End_OF
			BX		R0
C_231		NOP
			LDR		R0,=W_17
B_17		BX		R0
E_17		NOP
			CMP		R1,#0
			BNE		C_232
			LDR		R0,=End_UF
			BX		R0
C_232		SUBS	R1,R1,#1
W_99		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_99
			B		A_99
BE_99		LDR		R0,=E_99
			BX		R0
A_99		NOP
			CMP		R1,#0
			BNE		C_233
			LDR		R0,=End_UF
			BX		R0
C_233		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_234
			LDR		R0,=End_OF
			BX		R0
C_234		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_99
B_99		BX		R0
E_99		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_235
			LDR		R0,=End_OF
			BX		R0
C_235		NOP
			LDR		R0,=W_16
B_16		BX		R0
E_16		NOP
			CMP		R1,#0
			BNE		C_236
			LDR		R0,=End_UF
			BX		R0
C_236		SUBS	R1,R1,#1
W_100		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_100
			B		A_100
BE_100		LDR		R0,=E_100
			BX		R0
A_100		NOP
			CMP		R1,#0
			BNE		C_237
			LDR		R0,=End_UF
			BX		R0
C_237		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_238
			LDR		R0,=End_OF
			BX		R0
C_238		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_239
			LDR		R0,=End_UF
			BX		R0
C_239		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_240
			LDR		R0,=End_OF
			BX		R0
C_240		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_241
			LDR		R0,=End_OF
			BX		R0
C_241		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_100
B_100		BX		R0
E_100		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_242
			LDR		R0,=End_OF
			BX		R0
C_242		NOP
			LDR		R0,=W_15
B_15		BX		R0
E_15		NOP
			CMP		R1,#0
			BNE		C_243
			LDR		R0,=End_UF
			BX		R0
C_243		SUBS	R1,R1,#1
W_101		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_101
			B		A_101
BE_101		LDR		R0,=E_101
			BX		R0
A_101		NOP
			CMP		R1,#0
			BNE		C_244
			LDR		R0,=End_UF
			BX		R0
C_244		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_245
			LDR		R0,=End_UF
			BX		R0
C_245		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			B		L_7
			LTORG
L_7		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_246
			LDR		R0,=End_OF
			BX		R0
C_246		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_247
			LDR		R0,=End_UF
			BX		R0
C_247		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_248
			LDR		R0,=End_OF
			BX		R0
C_248		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_249
			LDR		R0,=End_UF
			BX		R0
C_249		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_250
			LDR		R0,=End_OF
			BX		R0
C_250		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_101
B_101		BX		R0
E_101		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_251
			LDR		R0,=End_OF
			BX		R0
C_251		NOP
			LDR		R0,=W_14
B_14		BX		R0
E_14		NOP
			CMP		R1,#0
			BNE		C_252
			LDR		R0,=End_UF
			BX		R0
C_252		SUBS	R1,R1,#1
W_102		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_102
			B		A_102
BE_102		LDR		R0,=E_102
			BX		R0
A_102		NOP
			CMP		R1,#0
			BNE		C_253
			LDR		R0,=End_UF
			BX		R0
C_253		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_254
			LDR		R0,=End_OF
			BX		R0
C_254		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_255
			LDR		R0,=End_UF
			BX		R0
C_255		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_256
			LDR		R0,=End_OF
			BX		R0
C_256		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_102
B_102		BX		R0
E_102		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_257
			LDR		R0,=End_OF
			BX		R0
C_257		NOP
			LDR		R0,=W_13
B_13		BX		R0
E_13		NOP
			CMP		R1,#0
			BNE		C_258
			LDR		R0,=End_UF
			BX		R0
C_258		SUBS	R1,R1,#1
W_103		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_103
			B		A_103
BE_103		LDR		R0,=E_103
			BX		R0
A_103		NOP
			CMP		R1,#0
			BNE		C_259
			LDR		R0,=End_UF
			BX		R0
C_259		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_260
			LDR		R0,=End_OF
			BX		R0
C_260		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_261
			LDR		R0,=End_UF
			BX		R0
C_261		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_262
			LDR		R0,=End_OF
			BX		R0
C_262		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_103
B_103		BX		R0
E_103		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_263
			LDR		R0,=End_OF
			BX		R0
C_263		NOP
			LDR		R0,=W_12
B_12		BX		R0
E_12		NOP
			CMP		R1,#0
			BNE		C_264
			LDR		R0,=End_UF
			BX		R0
C_264		SUBS	R1,R1,#1
W_104		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_104
			B		A_104
BE_104		LDR		R0,=E_104
			BX		R0
A_104		NOP
			CMP		R1,#0
			BNE		C_265
			LDR		R0,=End_UF
			BX		R0
C_265		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_266
			LDR		R0,=End_OF
			BX		R0
C_266		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_267
			LDR		R0,=End_UF
			BX		R0
C_267		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_268
			LDR		R0,=End_OF
			BX		R0
C_268		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_269
			LDR		R0,=End_UF
			BX		R0
C_269		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_270
			LDR		R0,=End_OF
			BX		R0
C_270		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_104
B_104		BX		R0
E_104		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_271
			LDR		R0,=End_OF
			BX		R0
C_271		NOP
			LDR		R0,=W_11
B_11		BX		R0
E_11		NOP
			CMP		R1,#0
			BNE		C_272
			LDR		R0,=End_UF
			BX		R0
C_272		SUBS	R1,R1,#1
W_105		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_105
			B		A_105
BE_105		LDR		R0,=E_105
			BX		R0
A_105		NOP
			CMP		R1,#0
			BNE		C_273
			LDR		R0,=End_UF
			BX		R0
C_273		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_274
			LDR		R0,=End_OF
			BX		R0
C_274		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_275
			LDR		R0,=End_UF
			BX		R0
C_275		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_276
			LDR		R0,=End_OF
			BX		R0
C_276		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_277
			LDR		R0,=End_UF
			BX		R0
C_277		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_278
			LDR		R0,=End_OF
			BX		R0
C_278		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_105
B_105		BX		R0
E_105		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_279
			LDR		R0,=End_OF
			BX		R0
C_279		NOP
			LDR		R0,=W_10
B_10		BX		R0
E_10		NOP
			CMP		R1,#0
			BNE		C_280
			LDR		R0,=End_UF
			BX		R0
C_280		SUBS	R1,R1,#1
W_106		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_106
			B		A_106
BE_106		LDR		R0,=E_106
			BX		R0
A_106		NOP
			CMP		R1,#0
			BNE		C_281
			LDR		R0,=End_UF
			BX		R0
C_281		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_282
			LDR		R0,=End_UF
			BX		R0
C_282		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_283
			LDR		R0,=End_OF
			BX		R0
C_283		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_284
			LDR		R0,=End_OF
			BX		R0
C_284		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_106
B_106		BX		R0
E_106		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_285
			LDR		R0,=End_OF
			BX		R0
C_285		NOP
			LDR		R0,=W_9
B_9		BX		R0
E_9		NOP
			B		L_8
			LTORG
L_8		NOP
			CMP		R1,#0
			BNE		C_286
			LDR		R0,=End_UF
			BX		R0
C_286		SUBS	R1,R1,#1
W_107		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_107
			B		A_107
BE_107		LDR		R0,=E_107
			BX		R0
A_107		NOP
			CMP		R1,#0
			BNE		C_287
			LDR		R0,=End_UF
			BX		R0
C_287		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_288
			LDR		R0,=End_UF
			BX		R0
C_288		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_289
			LDR		R0,=End_OF
			BX		R0
C_289		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_290
			LDR		R0,=End_OF
			BX		R0
C_290		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_107
B_107		BX		R0
E_107		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_291
			LDR		R0,=End_OF
			BX		R0
C_291		NOP
			LDR		R0,=W_8
B_8		BX		R0
E_8		NOP
			CMP		R1,#0
			BNE		C_292
			LDR		R0,=End_UF
			BX		R0
C_292		SUBS	R1,R1,#1
W_108		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_108
			B		A_108
BE_108		LDR		R0,=E_108
			BX		R0
A_108		NOP
			CMP		R1,#0
			BNE		C_293
			LDR		R0,=End_UF
			BX		R0
C_293		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_294
			LDR		R0,=End_UF
			BX		R0
C_294		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_295
			LDR		R0,=End_OF
			BX		R0
C_295		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_296
			LDR		R0,=End_UF
			BX		R0
C_296		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_297
			LDR		R0,=End_OF
			BX		R0
C_297		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_298
			LDR		R0,=End_OF
			BX		R0
C_298		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_108
B_108		BX		R0
E_108		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_299
			LDR		R0,=End_OF
			BX		R0
C_299		NOP
			LDR		R0,=W_7
B_7		BX		R0
E_7		NOP
			CMP		R1,#0
			BNE		C_300
			LDR		R0,=End_UF
			BX		R0
C_300		SUBS	R1,R1,#1
W_109		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_109
			B		A_109
BE_109		LDR		R0,=E_109
			BX		R0
A_109		NOP
			CMP		R1,#0
			BNE		C_301
			LDR		R0,=End_UF
			BX		R0
C_301		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_302
			LDR		R0,=End_OF
			BX		R0
C_302		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_303
			LDR		R0,=End_UF
			BX		R0
C_303		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_304
			LDR		R0,=End_OF
			BX		R0
C_304		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_305
			LDR		R0,=End_UF
			BX		R0
C_305		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_306
			LDR		R0,=End_OF
			BX		R0
C_306		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_109
B_109		BX		R0
E_109		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_307
			LDR		R0,=End_OF
			BX		R0
C_307		NOP
			LDR		R0,=W_6
B_6		BX		R0
E_6		NOP
			CMP		R1,#0
			BNE		C_308
			LDR		R0,=End_UF
			BX		R0
C_308		SUBS	R1,R1,#1
W_110		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_110
			B		A_110
BE_110		LDR		R0,=E_110
			BX		R0
A_110		NOP
			CMP		R1,#0
			BNE		C_309
			LDR		R0,=End_UF
			BX		R0
C_309		SUBS	R1,R1,#3
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#3
			CMP		R1,R2
			BLO		C_310
			LDR		R0,=End_OF
			BX		R0
C_310		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_110
B_110		BX		R0
E_110		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_311
			LDR		R0,=End_OF
			BX		R0
C_311		NOP
			LDR		R0,=W_5
B_5		BX		R0
E_5		NOP
			CMP		R1,#0
			BNE		C_312
			LDR		R0,=End_UF
			BX		R0
C_312		SUBS	R1,R1,#1
W_111		LDRB	R0,[R1,#0]
			CMP		R0,#0
			BEQ		BE_111
			B		A_111
BE_111		LDR		R0,=E_111
			BX		R0
A_111		NOP
			CMP		R1,#0
			BNE		C_313
			LDR		R0,=End_UF
			BX		R0
C_313		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_314
			LDR		R0,=End_OF
			BX		R0
C_314		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_315
			LDR		R0,=End_UF
			BX		R0
C_315		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#2
			CMP		R1,R2
			BLO		C_316
			LDR		R0,=End_OF
			BX		R0
C_316		NOP
			LDRB	R0,[R1,#0]
			SUBS	R0,R0,#1
			STRB	R0,[R1,#0]
			LDR		R0,=W_111
B_111		BX		R0
E_111		NOP
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_317
			LDR		R0,=End_OF
			BX		R0
C_317		NOP
			LDR		R0,=W_4
B_4		BX		R0
E_4		NOP
			CMP		R1,#0
			BNE		C_318
			LDR		R0,=End_UF
			BX		R0
C_318		SUBS	R1,R1,#4
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#4
			CMP		R1,R2
			BLO		C_319
			LDR		R0,=End_OF
			BX		R0
C_319		NOP
			LDR		R0,=input_mes
			BL		PutStringSB	
			BL		GetChar
			BL		PutChar
			STRB	R0,[R1,#0]
			LDR		R0,=CRLF
			BL		PutStringSB
			LDR		R0,=W_3
B_3		BX		R0
E_3		NOP
			CMP		R1,#0
			BNE		C_320
			LDR		R0,=End_UF
			BX		R0
C_320		SUBS	R1,R1,#2
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_321
			LDR		R0,=End_UF
			BX		R0
C_321		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_322
			LDR		R0,=End_OF
			BX		R0
C_322		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar
			CMP		R1,#0
			BNE		C_323
			LDR		R0,=End_UF
			BX		R0
C_323		SUBS	R1,R1,#1
			LDRB	R0,[R1,#0]
			BL	PutChar
			ADDS	R1,R1,#1
			CMP		R1,R2
			BLO		C_324
			LDR		R0,=End_OF
			BX		R0
C_324		NOP
			LDRB	R0,[R1,#0]
			BL	PutChar


            ;Program ends here.
End_OF		LDR		R0,=OF_message
			BL		PutStringSB
			B		End_BF
			
End_UF		LDR		R0,=UF_message
			BL		PutStringSB
			B		End_BF

;>>>>>   end main program code <<<<<
;Stay here
End_BF      B       .
            ENDP
;>>>>> begin subroutine code <<<<<
Clear_Mem	PROC	{R0-R14},{}
			;takes i the pointer to memory in R1, and the size in R0, clears dat shit.
			PUSH	{R0-R3}
			
			MOVS	R3,#0
			MOVS	R2,#0
			
cm_Loop		STRB	R3,[R1,R2]
			ADDS	R2,R2,#1
			CMP		R2,R0
			BHS		End_cm
			B		cm_Loop
			
End_cm		POP		{R0-R3}
			BX		LR
			ENDP
				
;-------------------------------------------------------------------------------------

Init_UART0_Polling	PROC {R0-R14}, {}
			;This subroutine initializes UART0 for polling, 
			;at 9600 baud, 8 bits of parity and 1 stop bit.
			PUSH	{R0-R2}
			
			;Select MCGPLLCLK / 2 as UART0 clock source     
			LDR   R0,=SIM_SOPT2     
			LDR   R1,=SIM_SOPT2_UART0SRC_MASK     
			LDR   R2,[R0,#0]     
			BICS  R2,R2,R1    
			LDR   R1,=SIM_SOPT2_UART0_MCGPLLCLK_DIV2     
			ORRS  R2,R2,R1    
			STR   R2,[R0,#0] 
			
			;Enable external connection for UART0     
			LDR   R0,=SIM_SOPT5     
			LDR   R1,=SIM_SOPT5_UART0_EXTERN_MASK_CLEAR     
			LDR   R2,[R0,#0]     
			BICS  R2,R2,R1    
			STR   R2,[R0,#0] 
			
			;Enable clock for UART0 module     
			LDR   R0,=SIM_SCGC4     
			LDR   R1,=SIM_SCGC4_UART0_MASK     
			LDR   R2,[R0,#0]     
			ORRS  R2,R2,R1    
			STR   R2,[R0,#0] 
			
			;Enable clock for Port A module     
			LDR   R0,=SIM_SCGC5     
			LDR   R1,=SIM_SCGC5_PORTA_MASK     
			LDR   R2,[R0,#0]     
			ORRS  R2,R2,R1    
			STR   R2,[R0,#0] 
			
			;Connect PORT A Pin 1 (PTA1) to UART0 Rx (J1 Pin 02)     
			LDR     R0,=PORTA_PCR1     
			LDR     R1,=PORT_PCR_SET_PTA1_UART0_RX     
			STR     R1,[R0,#0] 
			
			;Connect PORT A Pin 2 (PTA2) to UART0 Tx (J1 Pin 04)     
			LDR     R0,=PORTA_PCR2     
			LDR     R1,=PORT_PCR_SET_PTA2_UART0_TX     
			STR     R1,[R0,#0]
			
			;Disable UART0 receiver and transmitter     
			LDR   R0,=UART0_BASE     
			MOVS  R1,#UART0_C2_T_R     
			LDRB  R2,[R0,#UART0_C2_OFFSET]    
			BICS  R2,R2,R1 		;Bit clear for disabling   
			STRB  R2,[R0,#UART0_C2_OFFSET] 
			
			;Set UART0 for 9600 baud, 8N1 protocol     
			MOVS  R1,#UART0_BDH_9600     	;constant for setting BDH to 9600
			STRB  R1,[R0,#UART0_BDH_OFFSET]     
			MOVS  R1,#UART0_BDL_9600     	;constant for setting BDL to 9600
			STRB  R1,[R0,#UART0_BDL_OFFSET]     
			MOVS  R1,#UART0_C1_8N1     		
			STRB  R1,[R0,#UART0_C1_OFFSET]     
			MOVS  R1,#UART0_C3_NO_TXINV     
			STRB  R1,[R0,#UART0_C3_OFFSET]     
			MOVS  R1,#UART0_C4_NO_MATCH_OSR_16     
			STRB  R1,[R0,#UART0_C4_OFFSET]     
			MOVS  R1,#UART0_C5_NO_DMA_SSR_SYNC     
			STRB  R1,[R0,#UART0_C5_OFFSET]     
			MOVS  R1,#UART0_S1_CLEAR_FLAGS     
			STRB  R1,[R0,#UART0_S1_OFFSET]     
			MOVS  R1, #UART0_S2_NO_RXINV_BRK10_NO_LBKDETECT_CLEAR_FLAGS     
			STRB  R1,[R0,#UART0_S2_OFFSET] 
			
			;Enable UART0 receiver and transmitter     
			MOVS  R1,#UART0_C2_T_R     
			STRB  R1,[R0,#UART0_C2_OFFSET] 
			
			POP		{R0-R2}
			BX		LR
			ENDP
				
;------------------------------------------------------------	
	
PutChar		PROC {R0-R14}, {}
			;Transmits a single character from the terminal keyboard from R0
			PUSH	{R1-R3}
			
			;Poll TDRE until UART0 ready to transmit          
			LDR   R1,=UART0_BASE          
			MOVS  R2,#UART0_S1_TDRE_MASK 
PollTx   	LDRB  R3,[R1,#UART0_S1_OFFSET]          
			ANDS  R3,R3,R2         
			BEQ   PollTx 
			
			;Transmit character stored in R0         
			STRB  R0,[R1,#UART0_D_OFFSET] 
			
			POP		{R1-R3}
			BX		LR
			ENDP

;------------------------------------------------------------

GetChar		PROC {R1-R13}, {}
			;Reads a single character from the terminal keyboard into R0
			PUSH	{R1-R3}
			
			;Poll RDRF until UART0 ready to receive          
			LDR   R1,=UART0_BASE          
			MOVS  R2,#UART0_S1_RDRF_MASK 

PollRx   	LDRB  R3,[R1,#UART0_S1_OFFSET]          
			ANDS  R3,R3,R2         
			BEQ   PollRx 
			
			;Receive character and store in R0         
			LDRB  R0,[R1,#UART0_D_OFFSET] 
			
			POP		{R1-R3}
			BX		LR
			ENDP

;------------------------------------------------------------

PutStringSB	PROC {R0-R13}, {}
            ;Print a null terminated string at R0 pointer, preventing buffer overrun
			PUSH 	{R0-R3,LR}
			MOVS	R2,R0;move address into R2
			MOVS	R3,#0;counter is 0 at R3
			SUBS	R1,R1,#1;buffer = buffer - 1
			
PutLoop		LDRB	R0,[R2,R3] ;load R0 with value at R2 with R3 offset
			CMP		R0,#0       ;If R0 is 0
			BEQ		EndPutS     ;break out

			BL		PutChar     ;print character
            
            ADDS	R3,R3,#1    ;increment counter
            CMP		R3,R1       ;if counter = buffer - 1
			BEQ		EndPutS     ;break out
            
			B		PutLoop     ;loop
			
EndPutS		POP		{R0-R3,PC}
			; no bx lr since Popping PC does it for us
			ENDP
;>>>>>   end subroutine code <<<<<
            ALIGN
;****************************************************************
;Vector Table Mapped to Address 0 at Reset
;Linker requires __Vectors to be exported
            AREA    RESET, DATA, READONLY
            EXPORT  __Vectors
            EXPORT  __Vectors_End
            EXPORT  __Vectors_Size
            IMPORT  __initial_sp
            IMPORT  Dummy_Handler
            IMPORT  HardFault_Handler
__Vectors 
                                      ;ARM core vectors
            DCD    __initial_sp       ;00:end of stack
            DCD    Reset_Handler      ;01:reset vector
            DCD    Dummy_Handler      ;02:NMI
            DCD    HardFault_Handler  ;03:hard fault
            DCD    Dummy_Handler      ;04:(reserved)
            DCD    Dummy_Handler      ;05:(reserved)
            DCD    Dummy_Handler      ;06:(reserved)
            DCD    Dummy_Handler      ;07:(reserved)
            DCD    Dummy_Handler      ;08:(reserved)
            DCD    Dummy_Handler      ;09:(reserved)
            DCD    Dummy_Handler      ;10:(reserved)
            DCD    Dummy_Handler      ;11:SVCall (supervisor call)
            DCD    Dummy_Handler      ;12:(reserved)
            DCD    Dummy_Handler      ;13:(reserved)
            DCD    Dummy_Handler      ;14:PendableSrvReq (pendable request 
                                      ;   for system service)
            DCD    Dummy_Handler      ;15:SysTick (system tick timer)
            DCD    Dummy_Handler      ;16:DMA channel 0 xfer complete/error
            DCD    Dummy_Handler      ;17:DMA channel 1 xfer complete/error
            DCD    Dummy_Handler      ;18:DMA channel 2 xfer complete/error
            DCD    Dummy_Handler      ;19:DMA channel 3 xfer complete/error
            DCD    Dummy_Handler      ;20:(reserved)
            DCD    Dummy_Handler      ;21:command complete; read collision
            DCD    Dummy_Handler      ;22:low-voltage detect;
                                      ;   low-voltage warning
            DCD    Dummy_Handler      ;23:low leakage wakeup
            DCD    Dummy_Handler      ;24:I2C0
            DCD    Dummy_Handler      ;25:I2C1
            DCD    Dummy_Handler      ;26:SPI0 (all IRQ sources)
            DCD    Dummy_Handler      ;27:SPI1 (all IRQ sources)
            DCD    Dummy_Handler      ;28:UART0 (status; error)
            DCD    Dummy_Handler      ;29:UART1 (status; error)
            DCD    Dummy_Handler      ;30:UART2 (status; error)
            DCD    Dummy_Handler      ;31:ADC0
            DCD    Dummy_Handler      ;32:CMP0
            DCD    Dummy_Handler      ;33:TPM0
            DCD    Dummy_Handler      ;34:TPM1
            DCD    Dummy_Handler      ;35:TPM2
            DCD    Dummy_Handler      ;36:RTC (alarm)
            DCD    Dummy_Handler      ;37:RTC (seconds)
            DCD    Dummy_Handler      ;38:PIT (all IRQ sources)
            DCD    Dummy_Handler      ;39:I2S0
            DCD    Dummy_Handler      ;40:USB0
            DCD    Dummy_Handler      ;41:DAC0
            DCD    Dummy_Handler      ;42:TSI0
            DCD    Dummy_Handler      ;43:MCG
            DCD    Dummy_Handler      ;44:LPTMR0
            DCD    Dummy_Handler      ;45:Segment LCD
            DCD    Dummy_Handler      ;46:PORTA pin detect
            DCD    Dummy_Handler      ;47:PORTC and PORTD pin detect
__Vectors_End
__Vectors_Size  EQU     __Vectors_End - __Vectors
            ALIGN
;****************************************************************
;Constants
            AREA    MyConst,DATA,READONLY
;>>>>> begin constants here <<<<<
input_mes   DCB	    CR,LF,"Input: ",Null
CRLF        DCB     CR,LF,Null
OF_message	DCB		CR,LF,"Memory Overflow",Null
UF_message	DCB		CR,LF,"Memory Underflow",Null
;>>>>>   end constants here <<<<<
            ALIGN
;****************************************************************
;Variables
            AREA    MyData,DATA,READWRITE
;>>>>> begin variables here <<<<<
Memory      SPACE   MEM_SIZE
;>>>>>   end variables here <<<<<
            ALIGN
            END
