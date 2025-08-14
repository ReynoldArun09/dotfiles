export ZSH="$HOME/.oh-my-zsh"
plugins=(zsh-autosuggestions zsh-syntax-highlighting history)
source $ZSH/oh-my-zsh.sh

#alias
alias hm="cd ~"
alias dl="cd ~/Downloads"
alias docs="cd ~/Documents"
alias ws="cd ~/Documents/Workspace"
alias cls="clear"
alias e="exit"
alias nc="~/.config/nvim"
alias up="sudo apt update"
alias ug="sudo apt upgrade"
alias soz="source .zshrc"
#git
alias gi="git init"
alias ga="git add ."
alias gc="git commit -m"
alias gstat='git status -s'
alias gb='git branch'
alias gcb='git checkout -b'
alias gcl='git clone'
#tmux
alias t="tmux"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tls="tmux ls"
alias tk="tmux kill-server"
alias tn="tmux new -s"
alias tx="tmux kill-session -t"



# NEOVIM
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
