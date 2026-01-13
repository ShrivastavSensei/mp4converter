#!/usr/bin/env bash
set -e

APP_NAME="mp4convert"
REPO="ShrivastavSensei/mp4converter"
BRANCH="main"
INSTALL_DIR="$HOME/.local/bin"

echo "▶ Installing $APP_NAME..."

mkdir -p "$INSTALL_DIR"

# Download main script
curl -fsSL \
"https://raw.githubusercontent.com/$REPO/$BRANCH/mp4convert" \
-o "$INSTALL_DIR/$APP_NAME"

# Download ASCII art
curl -fsSL \
"https://raw.githubusercontent.com/$REPO/$BRANCH/ascii.txt" \
-o "$INSTALL_DIR/ascii.txt"

# Make executable
chmod +x "$INSTALL_DIR/$APP_NAME"

# Add to PATH if needed
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
