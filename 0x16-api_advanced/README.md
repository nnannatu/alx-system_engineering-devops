# 0x16. API Advanced

## Background Context
API-related questions are common in technical interviews. They can range from simple tasks like querying an endpoint with a Python script to more complex tasks involving recursion, formatting, and sorting data. 

This project focuses on using the Reddit API to practice these skills. The Reddit API provides numerous endpoints, many of which don't require authentication, offering a rich source of data to work with. By gaining experience with API calls now, you can be better prepared for technical interviews and find practical applications in your projects.

## Resources
- [Reddit API Documentation](https://www.reddit.com/dev/api/)
- [Query String](https://en.wikipedia.org/wiki/Query_string)

## Learning Objectives
By the end of this project, you should be able to:

1. Read API documentation to identify the endpoints you need.
2. Use an API with pagination.
3. Parse JSON results from an API.
4. Make recursive API calls.
5. Sort a dictionary by value.

## Requirements
### General
- Allowed editors: `vi`, `vim`, `emacs`
- All files will be interpreted/compiled on Ubuntu 20.04 LTS using `python3` (version 3.4.3)
- All files should end with a new line
- The first line of all your files should be exactly `#!/usr/bin/python3`
- Libraries imported in your Python files must be organized in alphabetical order
- A `README.md` file, at the root of the folder of the project, is mandatory
- Your code should use the PEP 8 style
- All files must be executable
- The length of your files will be tested using `wc`
- All modules should have documentation (`python3 -c 'print(__import__("my_module").__doc__)'`)
- You must use the `Requests` module for sending HTTP requests to the Reddit API

## Project Tasks
### Mandatory Tasks
1. **Querying the Reddit API**
   - Write a Python script that queries a given Reddit API endpoint and prints the results.

2. **Handling Pagination**
   - Modify the script to handle pagination if the results span multiple pages.

3. **Parsing JSON Results**
   - Parse the JSON results from the API and extract specific information.

4. **Recursive API Calls**
   - Implement recursive API calls to fetch nested data or handle paginated responses.

5. **Sorting Data**
   - Sort a dictionary by its values and print the sorted results.

### Optional Tasks
- Additional tasks will involve more complex API interactions, error handling, and data manipulation.

## Getting Started
### Prerequisites
- Python 3.4.3 or later
- `Requests` module

### Installation
1. Install Python 3.4.3 or later if not already installed.
2. Install the `Requests` module using pip:
   ```sh
   pip install requests
