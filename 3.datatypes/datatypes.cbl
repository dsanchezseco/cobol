      *> sections in a cobol program
      *> column 1-6: line numbers
000001

      *> column 7: indicator, like this line. * = comment,
      *>   - continuation, / form feed

      *> column 8-11: all the special entries, like div, sect, paragr

      *> column 12-72: the statements aka code

      *> column 73-80: use as needed(?)

       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATATYPES.

       DATA DIVISION. 
         WORKING-STORAGE SECTION.

      *> level number | data name | picture clause | value clause (optional)
       01 VARIABLENAME  PIC 9(5) VALUE 12345.

      *> data name aka var name, nothing fancy

      *> level number -> the lever of the data in a record
      *> 01 -> record description entry
      *> 02-49 -> group and elementary items
      *> 66 -> rename clause items
      *> 77 -> cannot be subdivided
      *> 88 -> condition name entry

      *> elem items
         01 WS-NAME    PIC X(25).                          
         01 WS-CLASS   PIC 9(2)  VALUE  '10'.                   
      *> group
         01 WS-ADDRESS.                                         
       *> elem items
            05 WS-HOUSE-NUMBER    PIC 9(3).                     
            05 WS-STREET          PIC X(15).                    
            05 WS-CITY            PIC X(15).                    
            05 WS-COUNTRY         PIC X(15)  VALUE 'MARS'.

      *> picture -> for the following
      *> data type: 9 numeric, A alpha, X alphanumeric, V implicit decim
      *> S sign, P assumed decimal
       01 WS-NUM2 PIC PPP999.
       01 WS-NUM3 PIC S9(3)V9(2) VALUE -123.45.
       01 WS-ID PIC X(5) VALUE 'A121$'.

      *> value: optional to initialize the data items

       PROCEDURE DIVISION.
           DISPLAY "WS-NUM2 : "WS-NUM2.
           DISPLAY "WS-NUM3 : "WS-NUM3.
           DISPLAY "WS-NAME : "WS-NAME.
           DISPLAY "WS-ID : "WS-ID.

           STOP RUN.
