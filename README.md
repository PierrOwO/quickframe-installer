# QuickFrame Installer

This repository contains the installer script for the QuickFrame CLI, which allows you to quickly create new QuickFrame-based PHP projects from a predefined template.

## 📦 Features

- Simple `quickframe new <project-name>` command
- Automatically clones the project template from GitHub
- Works on Linux, macOS, and Windows

---

## 🚀 Installation

### 🐧 Linux / macOS

1. Clone this repository:
   ```bash
   git clone https://github.com/PierrOwO/quickframe-installer.git
   cd quickframe-installer/MacOs-Linux
2. Run the install script:
   ```bash
   chmod +x ./install.sh
   sudo ./install.sh
   ```
🪟 Windows 
1.	Clone or download this repository.
2.	Open the folder in Command Prompt (not PowerShell).
    ```bash
    cd quickframe-installer/Windows
3.	Run the install script:
   ```bash
   install.bat
   ```
🛠 Usage

Once installed, you can create a new QuickFrame project using:
 ```bash
quickframe new <project-name>
```
Example:
```bash
quickframe new myapp
```
This will:
	•	Clone the template from https://github.com/PierrOwO/QuickFrame.git
	•	Copy it to a local folder named myapp
	•	Remove the .git directory
	•	Initialize a fresh Git repository
	•	Set executable permissions for relevant files (Linux/macOS only)

⸻

🔗 Template Repository

By default, this tool uses the following template repository:
```bash
https://github.com/PierrOwO/QuickFrame.git
```
Make sure this repository is public and contains a valid QuickFrame project structure.

⸻

🧹 Uninstall

Linux/macOS:
```bash
sudo rm /usr/local/bin/quickframe
```
Windows:
1.	Delete this folder:
   ```bash
   %USERPROFILE%\AppData\Local\Programs\QuickFrame
   ```
2.	Remove the folder from the PATH environment variable if needed.
