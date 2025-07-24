# ZPL Macros
Zemax Programming Language (ZPL) Macros for Ansys Zemax OpticStudio

## Macros
A collection of macros designed to be executed from the Programming tab.

## Operands
Macros intended for use within the merit function via the **ZPLM** operand.

## Installation

### For Macros
1. Download the repository by clicking the "Code" button in the top-right corner and selecting "Download as ZIP."
2. Extract the `Macros` folder to your Zemax Macros directory, located at:  
   `C:\Users\%yourusername%\Documents\Zemax\Macros`  
   Zemax supports subfolders for organizing macros.

### For Operands
To use ZPL macros as operands in the merit function:
1. Place the macro files directly in the Zemax Macros folder:  
   `C:\Users\%yourusername%\Documents\Zemax\Macros`
2. Rename the macro files sequentially as follows:  
   `ZPL00.zpl`, `ZPL01.zpl`, `ZPL02.zpl`, ..., `ZPL99.zpl`
3. In the merit function, specify the desired numbered macro.

This naming convention allows the merit function to reference the correct macro.

### Macro Explanations
#### Macros/set_weight.zpl
This macro adjusts the weight (column 9) of merit function operands within a user-specified row range. It prompts for:
- **Mode**: 0 (all operands), 1 (OPLT/OPGT operands), or 2 (ZPLM operands).
- **Start and End Row Numbers**: Defines the range of rows to modify.
- **Weight Value**: The weight to apply.


#### Macros/surface_minmax.zpl
This macro calculates curvature and thickness tolerances for a specified surface or all surfaces in a lens file. It prompts for:
- **Surface Number**: 0 for all surfaces or a specific surface number.
- **Percentage**: A value to calculate tolerance ranges.

It calculates minimum and maximum curvature and thickness values based on the input percentage, applying a symmetric tolerance range. The results are printed for each surface, showing the surface number, minimum/maximum curvature, and minimum/maximum thickness. Great when used with OPLT/OPGT operands.

#### Macros/target_minmax
This macro calculates tolerance ranges for a user-specified target value. It prompts for:
- **Target**: A numeric value to set tolerances for.
- **Percentage**: A value to calculate the tolerance range.

It computes minimum and maximum target values based on the input percentage, applying a symmetric tolerance range. The results are printed, showing the minimum and maximum target values.

#### Operands/all_in_one.zpl
...
#### Operands/oplt_opgt.zpl
...
#### Operands/percentage.zpl
...
#### Operands/radi.zpl
...
#### Operands/radi_minmax.zpl
...
#### Operands/thickness_minmax.zpl
...