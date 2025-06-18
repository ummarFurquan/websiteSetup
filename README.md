# Simple Apache Web Server Setup with Static Template

This project provides a Bash script that automates the setup of an Apache web server and deploys a pre-designed static HTML dashboard template.

## 📦 What It Does

- Installs and starts the Apache HTTP server (`httpd`)
- Downloads a website template from Tooplate
- Extracts and copies the template to Apache’s web root (`/var/www/html`)
- Restarts the HTTP server
- Cleans up temporary files

## 🚀 Prerequisites

Make sure your environment meets the following requirements:

- Linux-based system (tested on CentOS/RHEL)
- Apache HTTP server installed (`httpd`)
- `wget` and `unzip` available
- Root or sudo privileges

## ⚙️ Installation Steps

1. **Clone or download** this repository to your server.
2. **Run the script:**

   ```bash
   chmod +x setup_web.sh
   ./setup_web.sh
