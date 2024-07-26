# matlab-autodynamic-matrix
# matlab-autodynamic-matrix
Dynamic Matrix Input

Description

This MATLAB script allows users to dynamically input a matrix with varying row sizes. The script prompts the user to enter the number of rows, and then for each row, it asks for the values of each component. The script handles rows of different lengths by padding shorter rows with zeros.

Usage

1. Run the script in MATLAB.
2. Enter the number of rows when prompted.
3. For each row, enter the values of each component in the format [r1, r2, r3, ...].
4. The script will create a matrix with the input values and display it.

Example

Enter the number of rows: 3

Enter the values of each component in a row: [1, 2, 3]

Enter the values of each component in a row: [4, 5]

Enter the values of each component in a row: [6, 7, 8, 9]

Output:


[1, 2, 3, 0]
[4, 5, 0, 0]
[6, 7, 8, 9]


Note

- The script assumes that the user will enter numeric values.
- The script pads shorter rows with zeros to match the length of the longest row.

Author

chanda luherm kunda
email: chankun006@gmail.com

License

Apache License
