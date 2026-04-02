# 🛠 Tools & Applications

This document lists all the tools, applications, and extensions managed in this
dotfiles repository, as defined in the [Brewfile](../Brewfile).

## 🍺 Homebrew Formulae (CLI Tools)

| Tool                         | Description                                                   | Example Usage                    |
| :--------------------------- | :------------------------------------------------------------ | :------------------------------- |
| **act**                      | Run your GitHub Actions locally                               | `act`                            |
| **atuin**                    | Magical shell history                                         | `atuin search -i`                |
| **bat**                      | Syntax highlighted file reading (Replacement for `cat`)       | `bat file.txt`                   |
| **btop**                     | Resource monitor                                              | `btop`                           |
| **cmatrix**                  | Matrix terminal effect                                        | `cmatrix`                        |
| **cowsay**                   | Configurable speaking cow                                     | `cowsay "Hello"`                 |
| **databricks**               | Databricks CLI                                                | `databricks --help`              |
| **duf**                      | Disk Usage/Free Utility (Replacement for `df`)                | `duf`                            |
| **fd**                       | Simple, fast and user-friendly alternative to 'find'          | `fd pattern`                     |
| **ffmpeg**                   | Record, convert and stream audio and video                    | `ffmpeg -i input.mp4 output.avi` |
| **figlet**                   | Create ASCII banners                                          | `figlet "Hello"`                 |
| **fortune**                  | Infinitely varying creative output                            | `fortune`                        |
| **fzf**                      | Command-line fuzzy finder                                     | `fzf`                            |
| **gemini-cli**               | Gemini AI in the terminal                                     | `gemini "Hello"`                 |
| **git**                      | Distributed version control system                            | `git status`                     |
| **git-extras**               | Little git extras                                             | `git summary`                    |
| **git-lfs**                  | Git extension for versioning large files                      | `git lfs track`                  |
| **gitleaks**                 | Scan git repos for secrets                                    | `gitleaks detect`                |
| **hadolint**                 | Dockerfile linter                                             | `hadolint Dockerfile`            |
| **handbrake**                | Video transcoder CLI                                          | `HandBrakeCLI --help`            |
| **helm**                     | The Kubernetes Package Manager                                | `helm list`                      |
| **imagemagick**              | Manipulate images from the terminal                           | `magick convert ...`             |
| **just**                     | A handy command runner                                        | `just build`                     |
| **kubernetes-cli (kubectl)** | Kubernetes command-line tool                                  | `kubectl get pods`               |
| **minikube**                 | Run Kubernetes locally                                        | `minikube start`                 |
| **neofetch**                 | System information tool                                       | `neofetch`                       |
| **neovim (nvim)**            | Hyperextensible Vim-based text editor                         | `nvim`                           |
| **poetry**                   | Python packaging and dependency management                    | `poetry install`                 |
| **pre-commit**               | Framework for managing git pre-commit hooks                   | `pre-commit run`                 |
| **pstree**                   | Display processes as a tree                                   | `pstree`                         |
| **ripgrep (rg)**             | Fast line-oriented search tool                                | `rg "pattern"`                   |
| **ruff**                     | Extremely fast Python linter and formatter                    | `ruff check .`                   |
| **scc**                      | Sloc, Cloc and Code: count lines of code                      | `scc`                            |
| **starship**                 | The minimal, blazing-fast, and infinitely customizable prompt | (Auto-loaded)                    |
| **stow**                     | GNU Stow is a symlink farm manager                            | `stow zsh`                       |
| **television**               | General purpose fuzzy finder TUI                              | `tv`                             |
| **tldr**                     | Simplified and community-driven man pages                     | `tldr tar`                       |
| **tmux**                     | Terminal multiplexer                                          | `tmux new -s session`            |
| **topgrade**                 | Upgrade everything                                            | `topgrade`                       |
| **tree**                     | Display directory structure as a tree                         | `tree`                           |
| **uv**                       | An extremely fast Python package installer and resolver       | `uv pip install ...`             |
| **worktrunk**                | CLI for Git worktree management                               | `wt`                             |
| **wtf**                      | Personal dashboard for your terminal                          | `wtfutil`                        |
| **zoxide**                   | Smarter cd command                                            | `z path/to/dir`                  |

## 📦 Homebrew Casks (GUI Applications)

| Application                | Description                               |
| :------------------------- | :---------------------------------------- |
| **Alt-Tab**                | Windows-like alt-tab on macOS             |
| **BetterDisplay**          | Unlock your displays' full potential      |
| **DisplayLink**            | Software for DisplayLink docking stations |
| **Docker Desktop**         | Container management                      |
| **Ghostty**                | Fast, GPU-accelerated terminal emulator   |
| **Git Credential Manager** | Securely store git credentials            |
| **Philips Hue Sync**       | Sync lights with your screen              |
| **R.app**                  | The R Programming Language                |
| **Raycast**                | Better Spotlight replacement              |
| **Spotify**                | Music streaming                           |
| **Visual Studio Code**     | Code editor                               |

## 🔌 VS Code Extensions

| Extension               | Description                                |
| :---------------------- | :----------------------------------------- |
| **Vim**                 | Vim emulation for VS Code                  |
| **Python**              | Python language support                    |
| **Jupyter**             | Jupyter Notebook support                   |
| **Ruff**                | Python linter and formatter                |
| **Prettier**            | Code formatter                             |
| **Gemini Code Assist**  | AI-powered code assistance                 |
| **Error Lens**          | Highlight errors/warnings in line          |
| **Markdown All in One** | Enhanced Markdown support                  |
| **Catppuccin**          | Theme for VS Code                          |
| **Even Better TOML**    | TOML support                               |
| **Rainbow CSV**         | Highlight CSV columns                      |
| **Docker**              | Manage Docker from VS Code                 |
| **Remote - SSH**        | Open folders on a remote machine using SSH |
| **Remote - Containers** | Open folders inside a container            |
| **Azure Pipelines**     | Support for Azure Pipelines YAML           |
| **Draw.io Integration** | Edit diagrams in VS Code                   |
| **Excalidraw**          | Integration for Excalidraw                 |
| **Better Comments**     | Improve code commenting                    |
| **Markdownlint**        | Markdown linting and style checking        |
