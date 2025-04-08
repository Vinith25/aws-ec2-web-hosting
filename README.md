# aws-ec2-web-hosting
Hosting a website using AWS EC2 Linux and Windows Instances.


# Web Hosting using AWS EC2 (Linux & Windows)

This project demonstrates how to launch and configure AWS EC2 instances (both Linux and Windows) to host a static website. This is a beginner-friendly cloud project that includes setting up Apache on Ubuntu and IIS on Windows Server.

## 🎯 Project Objectives

- Launch EC2 instances on AWS (Linux and Windows)
- Configure Apache server on Linux
- Configure IIS on Windows
- Host a basic HTML website
- Access the website using the instance's public IP
  
## 🧠 Skills Demonstrated

- AWS EC2 Instance Management
- Apache & IIS Web Servers
- Bash Scripting & Windows Server Roles
- Git & GitHub
- Cloud Infrastructure Setup
- Web Hosting

---

## 🐧 Linux EC2 Setup (Ubuntu)

1. Login to AWS Console
2. Go to EC2 → Launch Instance
3. Select **Ubuntu Server 20.04 LTS**
4. Choose t2.micro (Free Tier)
5. Configure security group:
   - Allow **SSH (port 22)**
   - Allow **HTTP (port 80)**
6. Launch the instance and connect via terminal using:
   ```bash
   ssh -i your-key.pem ubuntu@your-public-ip
   
## Apache Web Server Setup

```bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
