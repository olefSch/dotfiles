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
| **ca-certificates**          | Mozilla CA certificate store                                  | (Dependency)                     |
| **certifi**                  | Mozilla CA bundle for Python                                  | (Dependency)                     |
| **cmatrix**                  | Matrix terminal effect                                        | `cmatrix`                        |
| **cowsay**                   | Configurable speaking cow                                     | `cowsay "Hello"`                 |
| **databricks**               | Command-line interface for the Databricks platform            | `databricks --help`              |
| **duf**                      | Disk Usage/Free Utility (Replacement for `df`)                | `duf`                            |
| **fastfetch**                | Fast system information tool (written in C)                   | `fastfetch`                      |
| **fd**                       | Simple, fast and user-friendly alternative to 'find'          | `fd pattern`                     |
| **ffmpeg**                   | Record, convert and stream audio and video                    | `ffmpeg -i input.mp4 output.avi` |
| **figlet**                   | Create ASCII banners                                          | `figlet "Hello"`                 |
| **fortune**                  | Infinitely varying creative output                            | `fortune`                        |
| **fzf**                      | Command-line fuzzy finder                                     | `fzf`                            |
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
| **libomp**                   | LLVM's OpenMP runtime library                                 | (Dependency)                     |
| **minikube**                 | Run Kubernetes locally                                        | `minikube start`                 |
| **neovim (nvim)**            | Hyperextensible Vim-based text editor                         | `nvim`                           |
| **opencode**                 | AI coding agent, built for the terminal                       | `opencode`                       |
| **openjdk@17**               | Development kit for the Java programming language             | `java -version`                  |
| **openssl@3**                | Cryptography and SSL/TLS Toolkit                              | `openssl version`                |
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
| **uv**                       | Extremely fast Python package installer and resolver          | `uv pip install ...`             |
| **worktrunk**                | CLI for Git worktree management                               | `wt`                             |
| **wtf**                      | Personal dashboard for your terminal                          | `wtfutil`                        |
| **zoxide**                   | Smarter cd command                                            | `z path/to/dir`                  |

## 📦 Homebrew Casks (GUI Applications)

| Application                | Description                             |
| :------------------------- | :-------------------------------------- |
| **Alt-Tab**                | Windows-like alt-tab on macOS           |
| **BetterDisplay**          | Unlock your displays' full potential    |
| **Docker Desktop**         | Container management                    |
| **Ghostty**                | Fast, GPU-accelerated terminal emulator |
| **Git Credential Manager** | Securely store git credentials          |
| **Google Chrome**          | Web browser                             |
| **LibreOffice**            | Free cross-platform office suite        |
| **Philips Hue Sync**       | Sync lights with your screen            |
| **Raycast**                | Better Spotlight replacement            |
| **Rectangle**              | Move and resize windows using shortcuts |
| **Spotify**                | Music streaming                         |
| **Visual Studio Code**     | Code editor                             |

## 🔌 VS Code Extensions

| Extension                   | Description                                          |
| :-------------------------- | :--------------------------------------------------- |
| **Vim**                     | Vim emulation for VS Code                            |
| **Python Ecosystem**        | Python, Pylance, Debugger, Indent, and Environments  |
| **Jupyter Suite**           | Jupyter Notebook, Keymap, Cell Tags, Renderers       |
| **Ruff**                    | Fast Python linter and formatter                     |
| **Prettier**                | Code formatter                                       |
| **autoDocstring**           | Generate Python docstrings automatically             |
| **IntelliCode**             | AI-assisted development and API examples             |
| **Error Lens**              | Highlight errors/warnings in line                    |
| **Markdown All in One**     | Enhanced Markdown support                            |
| **Markdownlint**            | Markdown linting and style checking                  |
| **Code Spell Checker**      | Source code spell checker                            |
| **Catppuccin & Kanagawa**   | UI Themes for VS Code                                |
| **Helium Icon Theme**       | File icon theme                                      |
| **Even Better TOML**        | TOML language support                                |
| **Rainbow CSV**             | Highlight CSV columns                                |
| **YAML & JSON**             | Prettify JSON and Red Hat YAML support               |
| **Jinja & Django**          | Syntax support for Jinja, JinjaHTML, and Django      |
| **Docker & Containers**     | Manage Docker and open folders inside containers     |
| **Kubernetes Tools**        | Manage Kubernetes environments directly from VS Code |
| **Remote - SSH & Explorer** | Open folders on a remote machine using SSH           |
| **Azure Pipelines**         | Support for Azure Pipelines YAML                     |
| **Git History**             | View git log and file history visually               |
| **Draw.io Integration**     | Edit Draw.io diagrams in VS Code                     |
| **Excalidraw**              | Integration for Excalidraw whiteboards               |
| **Better Comments**         | Improve code commenting with colorful tags           |
| **Spectral**                | Lint OpenAPI and AsyncAPI documents                  |
| **Bruno API Client**        | API client integrated directly into the editor       |
| **VSCode PDF**              | View PDF files in the editor                         |
| **VS Code Pets**            | Put cute little animals in your editor               |
