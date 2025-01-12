#!/bin/bash

# Define the source directory for your dotfiles
DOTFILES_DIR="$HOME/.dotfiles"

# Backup directory for existing dotfiles
BACKUP_DIR="$HOME/.dotfiles_backup"

# Exclude list
EXCLUDE_FILES=("link_dotfiles.sh" "README.md")

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Function to check if a file should be excluded
is_excluded() {
  local file_name=$(basename "$1")
  for excluded in "${EXCLUDE_FILES[@]}"; do
    if [[ "$file_name" == "$excluded" ]]; then
      return 0 # True (excluded)
    fi
  done
  return 1 # False (not excluded)
}

# Recursively process files in the .dotfiles directory
find "$DOTFILES_DIR" -type f | while read -r SOURCE; do
  # Skip excluded files
  if is_excluded "$SOURCE"; then
    echo "Skipping excluded file: $SOURCE"
    continue
  fi

  # Determine target path in $HOME
  RELATIVE_PATH="${SOURCE#$DOTFILES_DIR/}"
  TARGET="$HOME/$RELATIVE_PATH"

  # Ensure the target directory exists
  mkdir -p "$(dirname "$TARGET")"

  # Backup existing file if it exists
  if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
    echo "Backing up existing $TARGET to $BACKUP_DIR"
    mv "$TARGET" "$BACKUP_DIR"
  fi

  # Create the symlink
  echo "Creating symlink: $TARGET -> $SOURCE"
  ln -s "$SOURCE" "$TARGET"
done

echo "Symlinks created successfully!"
