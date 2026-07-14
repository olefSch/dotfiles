#!/bin/bash

STOW_DIR="$HOME/dotfiles"
TARGET_DIR_BASE="$HOME"

stow_package() {
  package="$1"
  target="$2"

  # Verify package directory exists
  if [ ! -d "$STOW_DIR/$package" ]; then
    echo "Error: Directory '$STOW_DIR/$package' not found."
    return 1
  fi

  target_dir="${TARGET_DIR_BASE}/${target:-}"
  mkdir -p "$target_dir"

  # Ask to stow
  read -r -p "Do you want to stow the '$package' package? (y/n): " response
  if [[ ! "$response" =~ ^[Yy]$ ]]; then
    echo "Skipping '$package'."
    return 0
  fi

  # Optional Pre-Clean Step
  read -r -p "  [OPTIONAL] Clear pre-existing conflicts for '$package'? (y/n): " clean_response
  if [[ "$clean_response" =~ ^[Yy]$ ]]; then
    echo "  Scanning $target_dir for non-symlink conflicts..."
    find "$target_dir" -maxdepth 1 -not -name "." | while read -r item; do
      if [ -e "$item" ] && [ ! -L "$item" ]; then
        echo "  Found non-symlink: $(basename "$item")"
        read -r -p "    Delete this? (y/n): " delete_item
        if [[ "$delete_item" =~ ^[Yy]$ ]]; then
          rm -rf "$item"
          echo "    Deleted."
        fi
      fi
    done
  fi

  echo "  Stowing '$package'..."
  stow -R -t "$target_dir" "$package"

  if [ $? -eq 0 ]; then
    echo "  '$package' stowed successfully."

    # Specific post-stow logic
    if [ "$package" == "tmux" ]; then
      TPM_DIR="$HOME/.config/tmux/plugins/tpm"
      if [ ! -d "$TPM_DIR" ]; then
        echo "  Installing Tmux Plugin Manager..."
        mkdir -p "$HOME/.config/tmux/plugins"
        git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
      fi
    fi
  else
    echo "  Error: Stowing '$package' failed."
    return 1
  fi
}

# --- Main Script ---
echo "--- Dotfiles Synchronization Started ---"

stow_package "zsh"
stow_package "starship" ".config/starship"
stow_package "ghostty" ".config/ghostty"
stow_package "topgrade" ".config"
stow_package "atuin" ".config/atuin"
stow_package "fastfetch" ".config/fastfetch"
stow_package "opencode" ".config/opencode"
stow_package "tmux" ".config/tmux"
stow_package "television" ".config/television"

# Neovim logic
read -r -p "Clear Neovim state/cache? (y/n): " clear_nvim
if [[ "$clear_nvim" =~ ^[Yy]$ ]]; then
  echo "  Clearing Neovim directories..."
  rm -rf ~/.local/state/nvim ~/.local/share/nvim ~/.cache/nvim
fi
stow_package "nvim" ".config/nvim"

echo "--- Synchronization finished ---"
