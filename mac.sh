touch ~/.hushlogin
brew tap epk/epk
brew install --cask font-sf-mono-nerd-font
brew install starship
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'eval "$(starship init zsh)"
export ZSH="$HOME/.oh-my-zsh"
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh' > ~/.zshrc

echo 'add_newline = false
format = "$python$directory$character"

[character]
success_symbol = "[➜](bold green) "
error_symbol = "[✗](bold red) "

[python]
format="(\\\($virtualenv\\\) )"' > ~/.config/starship.toml

source ~/.zshrc
