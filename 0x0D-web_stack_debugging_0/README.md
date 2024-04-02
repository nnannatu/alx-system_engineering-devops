# Web Stack Debugging #0

## Objective:
The objective of this project is to practice debugging a web stack by identifying and fixing issues manually, and eventually creating a Bash script to automate the process.

## Task Description:
Given a broken web stack, the goal is to fix it by ensuring that the server has a copy of the `/etc/passwd` file in `/tmp` and a file named `/tmp/isworking` containing the string "OK". These elements are essential for the web application to work.

## Instructions:
1. Start by running a Docker container with Ubuntu 14.04.
2. Identify the issues in the broken web stack.
3. Manually fix the issues to bring the web stack to a working state.
4. Create a Bash script to automate the fixing process.

## Example:
```bash
#!/usr/bin/env bash
# Fix my server with these magic 2 lines
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
