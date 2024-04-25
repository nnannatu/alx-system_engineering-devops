# Web Server Configuration Project

## Overview

This project aims to configure a web server according to specific requirements using automation scripts.

### Project Tasks

- Configure the `web-01` server to meet specified requirements.
- Create a Bash script that automates the configuration of an Ubuntu machine.

#### Learning Objectives

By completing this project, you will gain knowledge about:

- The main role of a web server.
- Understanding child processes and their significance.
- Common HTTP requests and their purposes.
- DNS (Domain Name System) and its main role, along with different DNS record types.

## Scripts

### `88-script_example`

```bash
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
