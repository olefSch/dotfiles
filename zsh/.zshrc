## ----- Init Env Vars -----
export XDG_CONFIG_HOME="$HOME/.config"

## ----- Homebrew -----
export PATH="/opt/homebrew/bin:$PATH"

## ----- Alias -----
alias cat='bat'
alias df="duf"
alias f="fzf --preview 'bat --style=numbers --color=always {}'"
alias man="tldr"
alias update="topgrade"
alias ls="ls --color"
alias v="nvim"
alias vim="nvim"
alias cd="z"

## ----- Zinit -----
ZINIT_HOME="$XDG_CONFIG_HOME/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "$ZINIT_HOME/zinit.zsh"

## ----- Zinit Plugins -----
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

zinit snippet OMZP::git

autoload -U compinit && compinit

HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:z:*' fzf-preview 'ls --color $realpath'

## ----- Google CLI -----
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/schildt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/schildt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/schildt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/schildt/google-cloud-sdk/completion.zsh.inc'; fi


## ----- Java Path -----
PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

## ----- Node Shit -----
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm, without auto-using the default version

## ----- Starship -----
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

## ----- FZF -----
eval "$(fzf --zsh)"

## ----- Atuin -----
. "/opt/homebrew/opt/atuin/bin/"
eval "$(atuin init zsh)"

## ----- Zoxide -----
eval "$(zoxide init zsh)"

## ----- Keybinds -----
bindkey '^k' up-history
bindkey '^j' down-history
bindkey '^f' accept-line

## ----- Neofetch -----
neofetch

export LDFLAGS="-L$(brew --prefix openssl)/lib"
export CPPFLAGS="-I$(brew --prefix openssl)/include"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
