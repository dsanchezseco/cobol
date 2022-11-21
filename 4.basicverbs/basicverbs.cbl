       IDENTIFICATION DIVISION. 
       PROGRAM-ID. BASICVERBS.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 WS-NAME                PIC A(10).
       01 WS-OTHER-SHORTER-NAME  PIC A(2).
       01 WS-DATE                PIC X(10).
       01 WS-UNINIT              PIC 9(1)V9(3).

       01 NUM1                   PIC 9(2).
       01 NUM2                   PIC 9(2).
       01 NUM3                   PIC 9(2).
       01 NUM4                   PIC 9(2).

       PROCEDURE DIVISION .

      *> DISPLAY aka console.log
           DISPLAY "Enter your name > ".
      *> ACCEPT to read data from the user of the OS (with FROM)
           ACCEPT WS-NAME.
           ACCEPT WS-DATE FROM DATE.

           DISPLAY WS-DATE WS-NAME.

      *> INITIALIZE to uh initialize the vars. alphaX with spaces
      *> numeric with 0s. CANNOT init data names with RENAME
           INITIALIZE WS-UNINIT.
           DISPLAY WS-UNINIT.

      *> MOVE to copy data
      *> alphaBETIC to alphaX
      *> alphaNUMERIC to any
      *> numeric to numeric or alphaNUMERIC
           DISPLAY "ws-other-shorter-name" WS-OTHER-SHORTER-NAME.
           MOVE WS-NAME TO WS-OTHER-SHORTER-NAME.
           DISPLAY "moved ws-other-shorter-name" WS-OTHER-SHORTER-NAME.

      *> ADD TO
      *> SUBTRACT FROM
      *> MULTIPLY BY
      *> DIVIDE BY
      *> store result on NUM2
           ADD NUM1 TO NUM2. 
      *> store result on NUM3
           ADD NUM1 TO NUM2 GIVING NUM3.
      *> DO NUM2 = NUM1 + NUM2 & NUM3 = NUM1 + NUM3
           ADD NUM1 TO NUM2 NUM3.
      * DO NUM4 = NUM1 + NUM2 + NUM3
           ADD NUM1 NUM2 TO NUM3 GIVING NUM4.
      *> DO NUM3 = NUM1 / NUM2 with REMAINDER on WS-UNINIT
           DIVIDE NUM1 BY NUM2 GIVING NUM3 REMAINDER WS-UNINIT .

      *> COMPUTE to write the arithmetic expresions directly instead
           COMPUTE WS-UNINIT = NUM1 + NUM2  * NUM3 / NUM1.

           STOP RUN.