#!/bin/bash

STOW_DIR="$HOME/dotfiles"
TARGET_DIR_BASE="$HOME"

stow_package() {
  package="$1"
  target="$2"

  # Check if the package directory exists in the dotfiles dir
  if [ ! -d "$STOW_DIR/$package" ]; then
    echo "Error: Directory '$package' not found in dotfiles directory."
    return 1
  fi

  mkdir -p "$HOME/$target"  

  # Ask for confirmation
  read -r -p "Do you want to stow the '$package' package? (y/n): " response
  case "$response" in
    [Yy]* )
      echo "Stowing '$package'..."
      # Stow the package with the specified target
      stow -t "$TARGET_DIR_BASE/$target" "$package"
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
stow_package "topgrade" ".config/"

echo "Script finished."

exit 0
