#!/bin/bash

# Update package lists
apt-get update

# Install PostgreSQL client and required dependencies
apt-get install -y postgresql-client postgresql-contrib

# Install Python dependencies if requirements.txt exists
if [ -f requirements.txt ]; then
  echo "Installing Python dependencies..."
  pip install --user -r requirements.txt
else
  echo "No requirements.txt found - skipping pip install"
fi

# Install additional SQL tools
apt-get install -y sqlite3

echo "Development environment setup completed!"
