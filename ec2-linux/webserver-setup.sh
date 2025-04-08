#!/bin/bash

# Update package list
sudo apt update -y

# Install Apache2
sudo apt install apache2 -y

# Enable and start Apache service
sudo systemctl enable apache2
sudo systemctl start apache2

# Set permissions for web root
sudo chown -R ubuntu:ubuntu /var/www/html

# Optional: Add sample index.html
echo "<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My EC2 Website</title>
</head>
<body>
    <h1>Hello from Apache on AWS EC2 (Linux)!</h1>
</body>
</html>" > /var/www/html/index.html

echo "✅ Apache web server is installed and running!"


---

### 📄 `webserver-setup.sh`

```bash
#!/bin/bash

# Update package list
sudo apt update -y

# Install Apache2
sudo apt install apache2 -y

# Enable and start Apache service
sudo systemctl enable apache2
sudo systemctl start apache2

# Set permissions for web root
sudo chown -R ubuntu:ubuntu /var/www/html

# Optional: Add sample index.html
echo "<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My EC2 Website</title>
</head>
<body>
    <h1>Hello from Apache on AWS EC2 (Linux)!</h1>
</body>
</html>" > /var/www/html/index.html

echo "✅ Apache web server is installed and running!"
```

---

### 🧾 Instructions:

1. Save this as `webserver-setup.sh`
2. Upload it to your EC2 instance using `scp`:
   ```bash
   scp -i your-key.pem webserver-setup.sh ubuntu@your-public-ip:~
   ```
3. Connect via SSH and run:
   ```bash
   chmod +x webserver-setup.sh
   ./webserver-setup.sh
