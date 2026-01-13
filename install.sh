#!/usr/bin/env bash
set -e

APP_NAME="mp4convert"
INSTALL_DIR="$HOME/.local/bin"

echo "▶ Installing $APP_NAME..."

# Create bin directory
mkdir -p "$INSTALL_DIR"

# Copy files
cp "$APP_NAME" "$INSTALL_DIR/"
cp ascii.txt "$INSTALL_DIR/"

# Make executable
chmod +x "$INSTALL_DIR/$APP_NAME"

# Add to PATH if missing
if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
  echo "▶ Adding $INSTALL_DIR to PATH"

  if [[ -n "${ZSH_VERSION:-}" ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
  else
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
  fi
fi

echo "✔ Installed successfully"
echo "Restart your terminal or run: exec \$SHELL"
cp mp4convert "$INSTALL_DIR/"
