#!/bin/bash
set -euo pipefail

echo "🔧 Installing PHP/system deps (skipping anything not in repos)..."

# Minimal, commonly-needed extensions for Laravel on EB PHP 8.x
PKGS=(
  php-mbstring
  php-xml
  php-bcmath
  php-curl
  php-mysqlnd
  php-intl
  php-zip
  unzip
  git
  curl
)

# Install each package only if available, never fail the deploy for a miss
for pkg in "${PKGS[@]}"; do
  if yum list -q available "$pkg" >/dev/null 2>&1; then
    echo "➡️  Installing $pkg"
    yum install -y "$pkg"
  else
    echo "⚠️  $pkg not found in repos; skipping"
  fi
done

echo "🔑 Fixing Laravel permissions..."
chmod -R 775 /var/app/current/storage /var/app/current/bootstrap/cache || true
chown -R webapp:webapp /var/app/current/storage /var/app/current/bootstrap/cache || true
echo "✅ Predeploy complete."
