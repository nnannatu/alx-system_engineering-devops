# Bash Project: Shell Permissions Learning

This project is designed to help you gain a solid understanding of various aspects of shell permissions and Linux file management. You will learn about essential commands like chmod, sudo, su, chown, and chgrp, and how they impact file permissions and ownership. By completing this project, you will be able to explain these concepts to others confidently.

## Learning Objectives

After completing this project, you will be able to explain the following concepts:

1. **Permissions**: Understand the purpose of commands like chmod, sudo, su, chown, and chgrp, and how they are used to manage file permissions and ownership.

2. **Linux File Permissions**: Learn how Linux file permissions are categorized into three sets: owner, group, and other. Each set has read, write, and execute permissions, which can be represented as a single digit numeric value.

3. **Changing Permissions, Ownership, and Group**: Learn how to change file permissions using chmod, as well as how to modify ownership and group assignments using chown and chgrp.

4. **Limitations of Normal Users**: Understand why a regular user cannot use chown on certain files and why administrative privileges are required.

5. **Running Commands with Root Privileges**: Learn how to execute commands with root privileges using sudo and how to switch to the superuser using su.

6. **Creating Users and Groups**: Explore how to create new users and groups, and understand the significance of real and effective user and group IDs.

7. **User ID and Group ID Information**: Learn how to print information about user and group memberships, as well as how to display the effective user ID.

## Project Structure

- **chmod_script.sh**: A script demonstrating the usage of the chmod command to modify file permissions.
- **sudo_script.sh**: A script showcasing the use of sudo to execute a command with administrative privileges.
- **chown_chgrp_script.sh**: A script illustrating how to change file ownership and group using chown and chgrp.
- **superuser_script.sh**: A script explaining how to switch to the superuser using su.
- **create_user_group_script.sh**: A script demonstrating the creation of new users and groups.
- **user_group_info_script.sh**: A script displaying user and group ID information.
- **README.md**: A detailed explanation of each script's purpose and functionality.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/shell-permissions-project.git

