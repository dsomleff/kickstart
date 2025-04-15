# 🚀 KICKSTART

Kickstart is a personal macOS setup script that helps get development
environment up and running fast. It installs essential tools, configures system
preferences, sets up dotfiles, and more — all in one go.

---

## 📦 What It Does

This script automates:

- Installing [Homebrew](https://brew.sh) and essential packages
- Setting up Git configuration
- Cloning and symlinking your dotfiles
- Applying macOS system tweaks
- Optional: Installing custom apps and tools

## 🛠️ How to Use

1. **Download the ZIP**

    - Go to [https://github.com/dsomleff/kickstart](https://github.com/dsomleff/kickstart)
    - Click the green **"Code"** button
    - Select **"Download ZIP"**

2. **Unpack it into a `Pets` folder**

```bash
  mkdir -p ~/Pets
  cd ~/Pets
  unzip ~/Downloads/Kickstart\ main.zip
  mv kickstart-main kickstart
  rm ~/Downloads/Kickstart\ main.zip
  cd kickstart
```

3. **Make the main script executable and run it**

```bash
chmod +x kickstart.sh
./kickstart.sh
```

## 🧪 Requirements

- macOS
- Internet connection
