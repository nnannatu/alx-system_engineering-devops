# Bash Project: Processes and Signals

## Overview

This Bash project focuses on processes and signals in a Linux environment. By completing the tasks outlined in this project, you will gain a deeper understanding of process management, signals, and related concepts.

## Project Details

- **Author:** Sylvain Kalache
- **Weight:** 1
- **Project Duration:** Jan 26, 2024, 6:00 AM - Jan 27, 2024, 6:00 AM
- **Checker Release:** Jan 26, 2024, 12:00 PM

## Learning Objectives

By the end of this project, you should be able to explain the following concepts without relying on external resources:

### General

1. **PID (Process ID):**
   - Definition: A numerical identifier assigned to each running process.
   - Example: To find the PID of a process named "example_process," use the `pgrep` command: `pgrep example_process`.

2. **Process:**
   - Definition: An instance of a program in execution.
   - Example: Running a Python script creates a process associated with that script.

3. **Finding a Process' PID:**
   - Example: Use the `ps` command to display information about active processes: `ps aux | grep process_name`.

4. **Killing a Process:**
   - Example: Terminate a process named "example_process" using the `kill` command: `kill PID_of_example_process`.

5. **Signal:**
   - Definition: A software interrupt delivered to a process.
   - Example: Sending the `SIGTERM` signal to gracefully terminate a process.

6. **Unignorable Signals:**
   - Examples: 
     - `SIGKILL`: Forces the immediate termination of a process.
     - `SIGSTOP`: Halts a process temporarily.

## Project Requirements

### General

- **Editors:** Allowed editors include vi, vim, and emacs.
- **Execution Environment:** All scripts will be interpreted on Ubuntu 20.04 LTS.
- **File Structure:** Ensure all files end with a new line.
- **README.md:** A mandatory file providing an overview of the project.
- **Script Executability:** All Bash scripts must be executable.
- **Shellcheck:** Scripts must pass Shellcheck (version 0.7.0) without any errors.
- **Shebang:** The first line of all scripts should be `#!/usr/bin/env bash`.
- **Comments:** The second line of each script should contain a comment explaining its purpose.

## Additional Resources

For a comprehensive understanding of signals, refer to [this article](link_to_article).

## Copyright and Plagiarism

- You are required to create solutions independently to meet the project's learning objectives.
- No content from this project should be published.
- Plagiarism is strictly prohibited and will result in removal from the program.

Feel free to reach out for any clarifications or assistance!

