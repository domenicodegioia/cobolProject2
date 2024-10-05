# Public Administration System - Tax, Contributions, and Pension Management

## Overview

This COBOL project implements an application for public administration to manage:
- **Taxes**: Calculates taxes based on the user's income.
- **Contributions**: Manages user contributions and updates them.
- **Pensions**: Calculates pensions based on accumulated contributions.

The project aims to provide a simple system for managing financial operations for public administration.

## Project Structure

- **`MAINPROGRAM.CBL`**: Handles the main program flow and calls the relevant modules.
- **`TAXMODULE.CBL`**: Manages tax calculation.
- **`PENSIONMODULE.CBL`**: Manages pension calculations.
- **`CONTRIBUTIONMODULE.CBL`**: Handles contributions management.
- **`USER-STRUCTURE.CPY`**: Defines user data structures shared across modules.
- **`USERDATA.DAT`**: Stores user information, such as income, contributions, and taxes.

## Code Flow

1. **`MAINPROGRAM.CBL`**:
   - Displays a menu allowing the user to select an operation (taxes, contributions, pensions).
   - Calls the appropriate module based on user input.

2. **Modules**:
   - Each module (`TAXMODULE`, `PENSIONMODULE`, `CONTRIBUTIONMODULE`) manages its respective operation.
   - Data is passed between the main program and the modules via the `USER-STRUCTURE.CPY`.

3. **Data Management**:
   - User data is stored in `USERDATA.DAT`, which contains information such as income, contributions, taxes, and pension details.
   - The modules read from and write to this file during execution.

## How to Run

1. Compile the COBOL files using your preferred COBOL compiler.
2. Ensure that the `USERDATA.DAT` file is properly formatted.
3. Run the `MAINPROGRAM` to access the public administration system.

## Future Enhancements

- Adding more granular operations for tax exemptions and deductions.
- Enhancing pension rules based on different contribution schemes.
- Implementing a user interface for ease of use.