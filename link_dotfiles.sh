#!/bin/bash

# Define the source directory for your dotfiles
DOTFILES_DIR="$HOME/.dotfiles"

# Backup directory for existing dotfiles
BACKUP_DIR="$HOME/.dotfiles_backup/"

# Exclude list
EXCLUDE_FILES=("link_dotfiles.sh" "README.md" ".git")

# Function to check if a file or directory should be excluded
is_excluded() {
  local relative_path="${1#$DOTFILES_DIR/}"
  for excluded in "${EXCLUDE_FILES[@]}"; do
    if [[ "$relative_path" == "$excluded" || "$relative_path" == "$excluded/"* ]]; then
      return 0 # True (excluded)
    fi
  done
  return 1 # False (not excluded)
}

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Recursively process files in the .dotfiles directory
find "$DOTFILES_DIR" -type f | while read -r SOURCE; do
  # Skip excluded files
  if is_excluded "$SOURCE"; then
    echo "Skipping excluded: $SOURCE"
    continue
  fi

  # Determine target path in $HOME
  RELATIVE_PATH="${SOURCE#$DOTFILES_DIR/}"
  TARGET="$HOME/$RELATIVE_PATH"

  # Ensure the target directory exists
  mkdir -p "$(dirname "$TARGET")"

  # Backup existing file if it exists
  if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
    echo "Backing up existing: $TARGET to $BACKUP_DIR"
    mv "$TARGET" "$BACKUP_DIR"
  fi

  # Create the symlink
  echo "Creating symlink: $TARGET -> $SOURCE"
  ln -s "$SOURCE" "$TARGET"
done

echo "Symlinks created successfully!"
