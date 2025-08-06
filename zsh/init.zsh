# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load all other config modules
source ~/.config/zsh/env.zsh
source ~/.config/zsh/plugins.zsh
source ~/.config/zsh/starship.zsh

# Load aliases
for file in ~/.config/zsh/aliases/*.zsh; do
  source "$file"
done
