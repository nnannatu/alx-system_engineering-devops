# Web Stack Debugging #3

## Introduction
This project focuses on debugging a WordPress website running on a LAMP (Linux, Apache, MySQL, and PHP) stack. Debugging involves investigating issues where logs are insufficient or not providing enough information.

## Background Context
WordPress is a widely used tool for various types of websites, including blogs, portfolios, e-commerce, and company websites. It powers a significant portion of the web. The LAMP stack is commonly used to run WordPress sites.

## Requirements
### General
- **Interpretation Environment**: All files will be interpreted on Ubuntu 14.04 LTS.
- **File Endings**: Ensure all files end with a new line.
- **README.md**: A README.md file at the root of the folder of the project is mandatory.
- **Puppet Manifests**: Ensure Puppet manifests pass puppet-lint version 2.1.1 without any errors and run without error. The first line of Puppet manifests must be a comment explaining their purpose, and files must end with the extension .pp.
- **Puppet Version**: Files will be checked with Puppet v3.4.

### More Info
To install puppet-lint:
```bash
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
