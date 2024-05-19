# Airbnb Clone Application Server Configuration

## Table of Contents

- [Background Context](#background-context)
- [Resources](#resources)
- [Requirements](#requirements)
- [Setup Instructions](#setup-instructions)
  - [Install and Configure Gunicorn](#install-and-configure-gunicorn)
  - [Configure Nginx](#configure-nginx)
  - [Manage Services with Upstart](#manage-services-with-upstart)
- [Testing](#testing)
- [FAQ](#faq)
- [Contributing](#contributing)
- [License](#license)

## Background Context

This project adds an application server to handle dynamic content for our Airbnb clone. Nginx will serve static content, and Gunicorn will handle dynamic content.

## Resources

Helpful resources:
- [Application server vs web server](https://example.com/application-server-vs-web-server)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://example.com/how-to-serve-flask-with-gunicorn-and-nginx)
- [Running Gunicorn](https://example.com/running-gunicorn)
- [Upstart documentation](https://example.com/upstart-documentation)

## Requirements

### General

- Use Python 3.
- Include comments in all configuration files.

### Bash Scripts

- Must run on Ubuntu 16.04 LTS.
- End with a new line and be executable.
- Pass Shellcheck (version 0.3.7-5~ubuntu16.04.1).

## Setup Instructions

### Install and Configure Gunicorn

1. **Install Gunicorn:**
    ```bash
    sudo apt-get update
    sudo apt-get install gunicorn
    ```

2. **Create a service file:**
    ```ini
    [Unit]
    Description=Gunicorn instance to serve Airbnb Clone
    After=network.target

    [Service]
    User=your-username
    Group=www-data
    WorkingDirectory=/path/to/your/project
    ExecStart=/usr/bin/gunicorn --workers 3 --bind unix:airbnb_clone.sock wsgi:app

    [Install]
    WantedBy=multi-user.target
    ```

3. **Start and enable the service:**
    ```bash
    sudo systemctl start airbnb_clone
    sudo systemctl enable airbnb_clone
    ```

### Configure Nginx

1. **Install Nginx:**
    ```bash
    sudo apt-get update
    sudo apt-get install nginx
    ```

2. **Configure Nginx:**
    ```nginx
    server {
        listen 80;
        server_name your_domain_or_IP;

        location / {
            proxy_pass http://unix:/path/to/your/project/airbnb_clone.sock;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }
    }
    ```

3. **Enable the configuration:**
    ```bash
    sudo ln -s /etc/nginx/sites-available/airbnb_clone /etc/nginx/sites-enabled
    sudo nginx -t
    sudo systemctl restart nginx
    ```

### Manage Services with Upstart

1. **Create an Upstart script:**
    ```upstart
    description "Gunicorn instance to serve Airbnb Clone"

    start on runlevel [2345]
    stop on runlevel [!2345]

    respawn
    setuid your-username
    setgid www-data
    chdir /path/to/your/project

    exec gunicorn --workers 3 --bind unix:airbnb_clone.sock wsgi:app
    ```

2. **Start the service:**
    ```bash
    sudo start airbnb_clone
    ```

## Testing

Visit your server's IP address or domain name to see if the Airbnb clone application is served correctly.

## FAQ

**Q:** What is the purpose of Gunicorn in this setup?  
**A:** Gunicorn serves the Flask application, managing multiple worker processes.

**Q:** Why do we use Nginx in front of Gunicorn?  
**A:** Nginx handles client requests, load balancing, SSL termination, and static files..

## Contributing

Submit issues, fork the repository, and send pull requests. Contributions are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
