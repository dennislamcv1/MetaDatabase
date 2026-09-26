# Lab Instructions: Writing PyTest Test Cases for String Validation

### **Introduction:**
In this lab, you will validate a string input using two specific tests: one to check the length and structure of the input string, and another to verify basic grammar rules. This will involve creating test cases using PyTest to ensure these checks are met.
 <br><br>

> ### **Tips: Before you Begin:**
> #### **To view your code and instructions side-by-side**, select the following in your VSCode toolbar:
> - View -> Editor Layout -> Two Columns
> - To view this file in Preview mode, right click on this README.md file and `Open Preview`
> - Select your code file in the code tree, which will open it up in a new VSCode tab.
> - Drag your assessment code files over to the second column. 
> - Great work! You can now see instructions and code at the same time. 
> - Questions about using VSCode? Please see our support resources [here](https://www.coursera.org/learn/programming-in-python/supplement/2IEyt/visual-studio-code-on-coursera).
> #### **To run your Python code**
> - Select your Python file in the Visual Studio Code file tree 
> - You can right click the file and select "Run Python File in Terminal" 
>   or run the file using the smaller   
    play button in the upper right-hand corner 
>   of VSCode.  
    (Select "Run Python File in Terminal" in the provided button dropdown)
> - Alternatively, you can follow lab instructions which use python3 commands to run your code in terminal.
> 

<br>

### **Goal:**
Learn to create automated test cases using PyTest to validate code functionality based on predefined criteria.

<br>

### **Objectives:**
- Verify that string inputs meet specified length constraints (word and character limits).
- Ensure that string inputs adhere to basic structural rules, such as starting with an uppercase letter and ending with a period.

<br>

### **Instructions:**
<br>

#### **1. Setup**
- Open the `test_spellcheck.py` file in the **PROJECT** folder.

#### **2. Import Required Modules**
- Import the `pytest` module and the `spellcheck` module, which contains the functions you’ll be testing.

#### **3. Define Test String Variables**
- In `test_spellcheck.py`, two variables are already defined:
  - `alpha`: A string that should pass the tests.
  - `beta`: A string that should fail one of the tests (for the bonus step).
- Comment out the `beta` variable using the `#` symbol for now.

#### **4. Create PyTest Fixture**
- Create a fixture named `input_value()` that returns `alpha` as the default input string to be tested. This will allow you to test both functions with `alpha` by default.

#### **5. Write Test Functions**

- **Function `test_length()`**
   - This function should check the length of the string in terms of both words and characters.
   - **Step 5.1**: Add an `assert` statement to check that the `word_count()` function (from `spellcheck`) returns a value less than 10.
   - **Step 5.2**: Add an `assert` statement to check that the `char_count()` function (from `spellcheck`) returns a value less than 50.

- **Function `test_struc()`**
   - This function should check if the string adheres to basic grammar rules.
   - **Step 6.1**: Add an `assert` statement to call `first_char()` and check that the returned character is uppercase using `.isupper()`.
   - **Step 6.2**: Add an `assert` statement to call `last_char()` and check that it returns a period (`"."`).

#### **6. Save and Run Tests**
- After modifying the script, navigate to **File** > **Save** to save changes in the script. 
- In the **PROJECT** directory, navigate to **Terminal > New Terminal**.
- Run the test script using the following command:
  ```bash
  pytest test_spellcheck.py
- Both tests should pass if your code is implemented correctly.

### **Bonus Step:**
- Update the `input_value` fixture to return `beta` instead of `alpha`.  
- Rerun the tests. One of the tests should now fail, demonstrating that the tests can detect incorrect input based on the criteria defined.

<br>

### **Expected Results:**
- With `alpha` as the input, both tests should pass.
- With `beta` as the input (in the bonus step), one test should fail.

<br>

### **Notes:**
- **Common Issue:** Double-check that `pytest` and `spellcheck` are correctly imported.
- **Tip:** Use `print()` statements in the functions if you need help troubleshooting the test cases.

## Final Step: Let's submit your code!
Nice work! To complete this assessment:
- Save your file through File -> Save 
- Select "Submit Assignment" in your Lab toolbar. 

Your code will be autograded and return feedback shortly on the "Grades" tab.  
You can also see your score in your Programming Assignment "My Submission" tab.
<br> <br> 