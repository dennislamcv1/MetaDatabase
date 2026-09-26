# Lab Instructions: Import and Scope

In this lab, you’ll practice using Python's `import` statement to bring external code within the scope of a project. You will:
1. Import a built-in package using `import`.
2. Import specific variables and functions from another Python file.

## Goals:
- Import a built-in package and use it within the code. 
- Import specific functions and variables from an external file.   

<br>

> ### **Tips: Before you Begin**
> #### **To view your code and instructions side-by-side**, select the following in your VSCode toolbar:
> - View -> Editor Layout -> Two Columns
> - To view this file in Preview mode, right-click on this README.md file and select `Open Preview`
> - Select your code file in the code tree, which will open it in a new VSCode tab.
> - Drag your assessment code files over to the second column.
> - Great work! You can now see instructions and code at the same time.
> - Questions about using VSCode? Please see our support resources [here](https://www.coursera.org/learn/programming-in-python/supplement/2IEyt/visual-studio-code-on-coursera).
> 
> #### **To run your Python code**
> - Select your Python file in the Visual Studio Code file tree
> - Right-click the file and select "Run Python File in Terminal" or use the play button in the upper right-hand corner.
> - Alternatively, you can follow lab instructions to run your code in terminal using `python3` commands.

<br>

## Lab Objectives:
- Use the `import` statement to import a built-in Python package (`json`).
- Import specific functions and variables from another file within the same project.
- Practice manipulating data with imported components to build and save structured information.

<br>

## Instructions:

1. Open `jsongenerator.py` in the project folder.

2. **Import a built-in package called `json`.**

3. **From `employee.py`, import the following:**
   - The `details` function.
   - Variables: `employee_name`, `age`, and `title`.

4. **Implement the `create_dict()` function.**
   - This function should return a dictionary with three key-value pairs:
      - `"first_name"` mapped to `employee_name`.
      - `"age"` mapped to `age` (converted to an integer).
      - `"title"` mapped to `title`.
   - Make sure each value is typecast to the expected type (`employee_name` as a string, `age` as an integer, and `title` as a string).

5. **Convert the Dictionary to JSON Format.**
   - Use the `dumps()` function from the `json` module to convert `employee_dict` to JSON format.
   - Store it in a variable named `json_object`:
     ```python
     json_object = json.dumps(employee_dict)
     ```

6. **Complete the `write_json_to_file()` function.**
   - Open a file using the name provided in the `output_file` argument, in `"w"` (write mode), and assign it to a variable named `newfile`.
   - Use the `write()` method to write `json_object` to `newfile`.
   - Close the file using the `close()` method on `newfile`.

7. **Save the files.**

8. **Run the Code.**
   - Open the terminal in the project directory and execute:
     ```bash
     python3 jsongenerator.py
     ```


## Expected Output:

When `jsongenerator.py` is executed, the output should display:
1. Employee details from `details()`.
2. The dictionary containing employee data.
3. The JSON string representation of this dictionary.
<br><br>

## Final Step: Let's submit your code!
Nice work! To complete this assessment:
- Save your file through File -> Save 
- Select "Submit Assignment" in your Lab toolbar. 

Your code will be autograded and return feedback shortly on the "Grades" tab.  
You can also see your score in your Programming Assignment "My Submission" tab.
<br> <br> 