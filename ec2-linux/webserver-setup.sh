#!/bin/bash
# Script to install Apache web server and host a static website on Ubuntu EC2

# Update package list
sudo apt update

# Install Apache
sudo apt install apache2 -y

# Start and enable Apache service
sudo systemctl start apache2
sudo systemctl enable apache2

# Create a simple HTML page
echo "<!DOCTYPE html>
<html>
<head>
    <title>Welcome to EC2 Linux Apache</title>
</head>
<body>
    <h1>Hello from Apache Web Server on EC2 (Linux)!</h1>
    <p>This is a sample static website hosted on AWS.</p>
</body>
</html>" | sudo tee /var/www/html/index.html

# Print server IP (optional)
echo "Your website is live. Visit: http://$(curl -s http://checkip.amazonaws.com)"
