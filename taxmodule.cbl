IDENTIFICATION DIVISION.
PROGRAM-ID. TAXMODULE.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
COPY "USER-STRUCTURE.CPY".
PROCEDURE DIVISION USING USER-STRUCTURE.
    DISPLAY "Managing Taxes"
    DISPLAY "Enter your tax details"
    PERFORM CALCULATE-TAX
    PERFORM DISPLAY-TAX-INFO
    STOP RUN.

CALCULATE-TAX.
    COMPUTE USER-TAX = USER-INCOME * 0.2.

DISPLAY-TAX-INFO.
    DISPLAY "Your calculated tax is: " USER-TAX.