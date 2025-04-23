#   My Dotfiles

##   Prerequisites

###   Base

* **Zsh**:   Foundational shell

* **Homebrew**: To install packages on macOS

###   Tools Which Get Configured

* **Atuin**:   Command history with stats and fuzzy search (written in Rust)

* **Ghostty**: Terminal emulator (fast due to Zig codebase)

* **Neofetch**:   Cool theme with stats for startup

* **Neovim**: Editor -> Fork of Vim

* **Starship**:   Prompt customization (fast because written in Rust)

* **Topgrade**:   Upgrades basically everything for you

###   Tools Which Are Needed or Used in the Config

In the .zshrc (software I use and configure there):

* **gcloud** -> needs Python

* **Java**

* **FZF**

* **Zoxide**

Needed for Neovim:

* **Ripgrep**: Needed for Telescope

##   Installation

```shell
#   Cloning the repo
git clone https://github.com/olefSch/dotfiles.git

#   Navigating into the dotfiles repo
cd dotfiles

#   Creating an executable script
chmod +x stow_script.sh

#   Executing the script to create the symlinks
./stow_script.sh
```

##   Target Dotfiles Structure

This will be the final structure which gets created after executing the \`stow_script.sh\`:

```
.
├── .config/
│   ├── atuin/
│   │   └── config.toml
│   ├── ghostty/
│   │   └── config
│   ├── neofetch/
│   │   ├── bmo.txt
│   │   └── config.conf
│   ├── neovim/
│   │   ├── lua/
│   │   │   └── all_configs.lua
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   └── lazyvim.json
│   ├── starship/
│   │   └── starship.toml
│   └── topgrade.toml
└── .zshrc
```
