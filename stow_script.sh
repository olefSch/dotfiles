#!/bin/bash

STOW_DIR="$HOME/dotfiles"
TARGET_DIR_BASE="$HOME"

stow_package() {
  package="$1"
  target="$2"

  # Check if the package directory exists in the dotfiles dir
  if [ ! -d "$STOW_DIR/$package" ]; then
    echo "Error: Directory '$STOW_DIR/$package' not found in dotfiles directory."
    return 1
  fi

  # Construct the full target directory path
  if [ -n "$target" ]; then
    target_dir="$TARGET_DIR_BASE/$target"
  else
    target_dir="$TARGET_DIR_BASE"
  fi

  # Create target directories
  mkdir -p "$target_dir"
  if [ $? -ne 0 ]; then
    echo "Error: Failed to create target directory '$target_dir'."
    return 1
  fi
 

  # Ask for confirmation
  read -r -p "Do you want to stow the '$package' package? (y/n): " response
  case "$response" in
    [Yy]* )
      # Check for and delete existing target files
      find "$STOW_DIR/$package" -type f -print0 | while IFS= read -r -d $'\0' source_file; do
        target_file="${target_dir}/${source_file#$STOW_DIR/$package/}"
        if [ -e "$target_file" ]; then
          echo "Deleting existing file: '$target_file'"
          rm -f "$target_file"
          if [ $? -ne 0 ]; then
            echo "Error: Failed to delete existing file '$target_file'."
            return 1
          fi
       fi
      done
      
      echo "Stowing '$package'..."
      # Stow the package with the specified target
      stow -t "$target_dir" "$package"
      if [ $? -eq 0 ]; then
        echo "'$package' stowed successfully."
      else
        echo "Error: Stowing '$package' failed."
        return 1
      fi
      ;;
    [Nn]* )
      echo "Stowing '$package' cancelled."
      return 0
      ;;
    * )
      echo "Invalid response. Stowing '$package' cancelled."
      return 1
      ;;
  esac
}

# Main script execution

echo "This script will use stow to create symlinks from the dotfiles directory."

stow_package "zsh"
stow_package "starship" ".config/starship"
stow_package "ghostty" ".config/ghostty"
stow_package "topgrade" ".config"
stow_package "atuin" ".config/atuin"
stow_package "neofetch" ".config/neofetch"

echo "Script finished."

exit 0
