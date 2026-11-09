#!/usr/bin/env bash
set -euo pipefail

echo "==> Setting up Node.js and pnpm environment..."
if command -v nvm >/dev/null 2>&1 || [ -s "$HOME/.nvm/nvm.sh" ]; then
  [ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"
  nvm install 24
  nvm use 24
fi

npm install -g pnpm@12.4.2

TARGET_DIR="${1:-$HOME/n8n}"

if [ ! -d "$TARGET_DIR" ]; then
  echo "==> Cloning n8n repository into $TARGET_DIR..."
  git clone --depth 1 https://github.com/n8n-io/n8n.git "$TARGET_DIR"
fi

cd "$TARGET_DIR"

echo "==> Installing workspace dependencies..."
pnpm install

echo "==> Building n8n packages..."
pnpm build

echo "==> Starting n8n instance..."
pnpm start
