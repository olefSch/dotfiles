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
| **duf**                      | Disk Usage/Free Utility (Replacement for `df`)                | `duf`                            |
| **fd**                       | Simple, fast and user-friendly alternative to 'find'          | `fd pattern`                     |
| **fzf**                      | Command-line fuzzy finder                                     | `fzf`                            |
| **git**                      | Distributed version control system                            | `git status`                     |
| **git-extras**               | Little git extras                                             | `git summary`                    |
| **git-lfs**                  | Git extension for versioning large files                      | `git lfs track`                  |
| **gitleaks**                 | Scan git repos for secrets                                    | `gitleaks detect`                |
| **hadolint**                 | Dockerfile linter                                             | `hadolint Dockerfile`            |
| **helm**                     | The Kubernetes Package Manager                                | `helm list`                      |
| **just**                     | A handy command runner                                        | `just build`                     |
| **kubernetes-cli (kubectl)** | Kubernetes command-line tool                                  | `kubectl get pods`               |
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
| **Ghostty**                | Fast, GPU-accelerated terminal emulator   |
| **Git Credential Manager** | Securely store git credentials            |
| **Visual Studio Code**     | Code editor                               |

## 🔌 VS Code Extensions

| Extension               | Description                                |
| :---------------------- | :----------------------------------------- |
| **Vim**                 | Vim emulation for VS Code                  |
| **Python**              | Python language support                    |
| **Jupyter**             | Jupyter Notebook support                   |
| **Ruff**                | Python linter and formatter                |
| **Prettier**            | Code formatter                             |
| **Error Lens**          | Highlight errors/warnings in line          |
| **Markdown All in One** | Enhanced Markdown support                  |
| **Ayu**                 | Theme for VS Code                          |
| **Even Better TOML**    | TOML support                               |
| **Rainbow CSV**         | Highlight CSV columns                      |
| **Docker**              | Manage Docker from VS Code                 |
| **Remote - SSH**        | Open folders on a remote machine using SSH |
| **Remote - Containers** | Open folders inside a container            |
| **Excalidraw**          | Integration for Excalidraw                 |
| **Better Comments**     | Improve code commenting                    |
| **Markdownlint**        | Markdown linting and style checking        |
