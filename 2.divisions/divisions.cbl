      *> mandatory! used to tell the name of the program 
       IDENTIFICATION DIVISION.
      *> here is the name, from 1 to 30 chars
       PROGRAM-ID. DIVISIONS.

      *> ##########################

      *> environment confif. d'uh. optional
      *> ENVIRONMENT DIVISION. 
      *> where the code was written and where it is executed
      *> CONFIGURATION SECTION.
      *>   SOURCE-COMPUTER. XXX.
      *>   OBJECT-COMPUTER. XXX.

      *> INPUT-OUTPUT SECTION. 
      *> file control and i/o


      *> ##########################

      *> define variables here!
       DATA DIVISION. 

      *> four sections

      *> struct of the file being read
      *>   FILE SECTION. 
      *>   FD <name>
      *>   01 <var_name> pic <type>.

      *> temp variables used in the code
         WORKING-STORAGE SECTION. 
       01 MYOTHERVAR     PIC A(10) VALUE 'david'.
       01 STOPCONDITION  PIC 9(5)  VALUE 5.

      *> like working-storage, but variables are alocated and initialized
      *> each time the program starts < for batch(daemon) mode
         LOCAL-STORAGE SECTION. 
       01 MYVAR          PIC 9(5)  VALUE 0.

      *> variables that are received from outside
      *> LINKAGE SECTION. 
      *> 01 LS-ID pic 9(5).

      *> ##########################

      *> here goes the code
       PROCEDURE DIVISION.
       A0000-MAIN-LOOP. 
           PERFORM A0001-FUNC VARYING MYVAR FROM 1 by 1 
           until MYVAR>STOPCONDITION 
           STOP RUN. *> mandatory
           
       A0001-FUNC.
           DISPLAY MYOTHERVAR MYVAR.
