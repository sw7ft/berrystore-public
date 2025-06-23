#!/bin/bash

# Set up directories
APPS_DIR=~/apps
TASKAPP_DIR="$APPS_DIR/taskapp"
PROFILE_FILE=~/.profile
BACKUP_PROFILE="$PROFILE_FILE.bak"
LOG_FILE="$TASKAPP_DIR/taskapp.log"
TASKAPP_START_COMMAND="python3 \"$TASKAPP_DIR/taskapp.py\" >> \"$LOG_FILE\" 2>&1 &"
TASKAPP_START_MARKER="# <<< TaskApp Start >>>"
TASKAPP_STOP_MARKER="# <<< End TaskApp Start >>>"

# Function to create a backup of .profile
backup_profile() {
    if [ ! -f "$BACKUP_PROFILE" ]; then
        cp "$PROFILE_FILE" "$BACKUP_PROFILE"
        echo "Backup of .profile created at $BACKUP_PROFILE."
    else
        echo "Backup of .profile already exists at $BACKUP_PROFILE."
    fi
}

# Function to append TaskApp start command and the custom message to .profile
append_to_profile() {
    echo "" >> "$PROFILE_FILE"
    echo "$TASKAPP_START_MARKER" >> "$PROFILE_FILE"
    echo "$TASKAPP_START_COMMAND" >> "$PROFILE_FILE"
    echo "$TASKAPP_STOP_MARKER" >> "$PROFILE_FILE"
    
    # === Added Section: Display custom message on terminal startup ===
    echo "" >> "$PROFILE_FILE"
    echo "# Display Task Manager URL" >> "$PROFILE_FILE"
    echo 'echo "Manage apps @ http://127.0.0.1:8001 "' >> "$PROFILE_FILE"
    # === End of Added Section ===

    echo "Added TaskApp start command and custom message to $PROFILE_FILE."
}

# Create Apps directory if it doesn't exist
mkdir -p "$APPS_DIR"

# Download and install Python
echo "Downloading Python package..."
curl -O https://berrystore.sw7ft.com/python/python3.11/python3_ntoarmv7-qnx-static.zip

echo "Downloading Python installation script..."
curl -O https://berrystore.sw7ft.com/python/python3.11/install.sh

echo "Setting permissions for installation script..."
chmod +x install.sh

echo "Unzipping Python package..."
unzip -o python3_ntoarmv7-qnx-static.zip

echo "Installing Python..."
./install.sh

# === Added Section: Ensure pip is installed and install 'requests' and 'beautifulsoup4' ===
echo "Ensuring pip is installed..."
python3 -m ensurepip
if [ $? -ne 0 ]; then
    echo "Failed to ensure pip installation. Exiting."
    exit 1
fi

echo "Upgrading pip to the latest version..."
python3 -m pip install --upgrade pip
if [ $? -ne 0 ]; then
    echo "Failed to upgrade pip. Exiting."
    exit 1
fi

echo "Installing 'requests' library..."
python3 -m pip install requests
if [ $? -ne 0 ]; then
    echo "Failed to install 'requests'. Exiting."
    exit 1
fi

# === Added Section: Install 'beautifulsoup4' ===
echo "Installing 'beautifulsoup4' library..."
python3 -m pip install beautifulsoup4
if [ $? -ne 0 ]; then
    echo "Failed to install 'beautifulsoup4'. Exiting."
    exit 1
fi
# === End of Added Section ===

# Install TaskApp
echo "Downloading TaskApp..."
curl -O https://berrystore.sw7ft.com/apps/taskapp.zip

echo "Creating TaskApp directory..."
mkdir -p "$TASKAPP_DIR"

echo "Unzipping TaskApp into $TASKAPP_DIR..."
unzip -o taskapp.zip -d "$TASKAPP_DIR"

# Handle nested taskapp directory if present
if [ -d "$TASKAPP_DIR/taskapp" ]; then
    echo "Detected nested 'taskapp' directory. Moving contents to '$TASKAPP_DIR'..."
    mv "$TASKAPP_DIR/taskapp/"* "$TASKAPP_DIR/"
    rmdir "$TASKAPP_DIR/taskapp"
    echo "Moved TaskApp files to '$TASKAPP_DIR'. Removed redundant 'taskapp' directory."
fi

# Ensure taskapp.py is executable
chmod +x "$TASKAPP_DIR/taskapp.py"

# Backup .profile before making changes
echo "Backing up existing .profile..."
backup_profile

# Update .profile to run TaskApp on terminal startup
echo "Updating .profile to run TaskApp on startup..."

# Check if the start marker exists in .profile
if grep -Fq "$TASKAPP_START_MARKER" "$PROFILE_FILE"; then
    echo "TaskApp start commands already exist in $PROFILE_FILE."
else
    append_to_profile
fi

# Cleanup downloaded files
echo "Cleaning up..."
rm -f python3_ntoarmv7-qnx-static.zip taskapp.zip install.sh

echo "Installation complete. TaskApp is located in $TASKAPP_DIR."
echo "TaskApp will run automatically on terminal startup."

# Optionally, source the updated .profile to apply changes immediately
# source "$PROFILE_FILE"
