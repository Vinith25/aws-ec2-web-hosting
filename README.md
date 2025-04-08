# aws-ec2-web-hosting
Hosting a website using AWS EC2 Linux and Windows Instances.


# Web Hosting using AWS EC2 (Linux & Windows)

This project demonstrates how to launch and configure AWS EC2 instances (both Linux and Windows) to host a static website. This is a beginner-friendly cloud project that includes setting up Apache on Ubuntu and IIS on Windows Server.

## 🎯 Project Objectives

- Launch Linux and Windows EC2 instances on AWS
- Configure Apache on Linux and IIS on Windows
- Host a sample static website
- Access the site using the instance's public IP

## 🧠 Skills Demonstrated

- AWS EC2 Instance Management
- Apache & IIS Web Servers
- Bash Scripting & Windows Server Roles
- Git & GitHub
- Cloud Infrastructure Setup
- Web Hosting

---

## 🐧 Linux EC2 Setup (Ubuntu)

1. Launch an EC2 instance using Ubuntu.
2. Configure security group to allow HTTP (port 80) and SSH (port 22).
3. Connect to instance using SSH.
4. Run the following script to install Apache and deploy the website:

```bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
