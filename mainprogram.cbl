IDENTIFICATION DIVISION.
PROGRAM-ID. MAINPROGRAM.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
COPY "USER-STRUCTURE.CPY".
PROCEDURE DIVISION.
    PERFORM INITIALIZE-SYSTEM
    PERFORM MENU-SELECTION
    STOP RUN.

INITIALIZE-SYSTEM.
    DISPLAY "Welcome to the Public Administration System".

MENU-SELECTION.
    DISPLAY "Choose an option:"
    DISPLAY "1. Manage Taxes"
    DISPLAY "2. Manage Contributions"
    DISPLAY "3. Manage Pensions"
    ACCEPT USER-INPUT
    EVALUATE USER-INPUT
        WHEN "1" PERFORM TAX-OPERATIONS
        WHEN "2" PERFORM CONTRIBUTION-OPERATIONS
        WHEN "3" PERFORM PENSION-OPERATIONS
        WHEN OTHER DISPLAY "Invalid option".
    END-EVALUATE.

TAX-OPERATIONS.
    CALL "TAXMODULE" USING USER-STRUCTURE.

CONTRIBUTION-OPERATIONS.
    CALL "CONTRIBUTIONMODULE" USING USER-STRUCTURE.

PENSION-OPERATIONS.
    CALL "PENSIONMODULE" USING USER-STRUCTURE.