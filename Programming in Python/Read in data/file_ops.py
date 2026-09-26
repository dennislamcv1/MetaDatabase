def read_file(file_name):
    """ Reads and returns the entire contents of a file as a single string.

    [IMPLEMENT ME]
        1. Open and read the given file into a variable using the File read()
           function.
        2. Print the contents of the file.
        3. Return the contents of the file.

    Args:
        file_name (str): Name of the file to be read.

    Returns:
        str: Entire contents of the file.
    """
    with open(file_name, 'r') as f:
        contents = f.read()
    print(contents)
    return contents


def read_file_into_list(file_name):
    """ Reads a file and returns a list where each element is a line in the file.

    [IMPLEMENT ME]
        1. Open the given file.
        2. Read the file line-by-line and append each line to a list.
        3. Return the list.

    Args:
        file_name (str): Name of the file to be read.

    Returns:
        list: List where each item is a line from the file.
    """
    lines = []
    with open(file_name, 'r') as f:
        for line in f:
            lines.append(line)
    return lines


def write_first_line_to_file(file_contents, output_filename):
    """ Writes the first line of a given string to an output file.

    [IMPLEMENT ME]
        1. Get the first line of file_contents.
        2. Use the File write() function to write the first line into a file
           with the name from output_filename.

        The first line is everything in a string before the first newline ('\n') character.

    Args:
        file_contents (str): String containing multiple lines of text.
        output_filename (str): Name of the file to write the first line into.
    """
    first_line = file_contents.split('\n')[0]
    with open(output_filename, 'w') as f:
        f.write(first_line)


def read_even_numbered_lines(file_name):
    """ Reads even-numbered lines of a file and returns them as a list.

    [IMPLEMENT ME]
        1. Open and read the given file into a variable.
        2. Read the file line-by-line and add the even-numbered lines to a list.
        3. Return the list.

    Args:
        file_name (str): Name of the file to be read.

    Returns:
        list: List of even-numbered lines in the file (2, 4, 6, etc.).
    """
    even_lines = []
    with open(file_name, 'r') as f:
        for line_number, line in enumerate(f, start=1):
            if line_number % 2 == 0:
                even_lines.append(line)
    return even_lines


def read_file_in_reverse(file_name):
    """ Reads a file and returns a list of its lines in reverse order.

    [IMPLEMENT ME]
        1. Open and read the given file into a variable.
        2. Read the file line-by-line and store the lines in a list in reverse order.
        3. Print the list.
        4. Return the list.

    Args:
        file_name (str): Name of the file to be read.

    Returns:
        list: List of lines from the file in reverse order.
    """
    with open(file_name, 'r') as f:
        lines = f.readlines()
    reversed_lines = lines[::-1]
    print(reversed_lines)
    return reversed_lines


# Sample commands to run/test your implementations.
def main():
    file_contents = read_file("sampletext.txt")
    print("File Contents:\n", file_contents)

    print(read_file_into_list("sampletext.txt"))
    write_first_line_to_file(file_contents, "output.txt")
    print(read_even_numbered_lines("sampletext.txt"))
    print(read_file_in_reverse("sampletext.txt"))

if __name__ == "__main__":
    main()
