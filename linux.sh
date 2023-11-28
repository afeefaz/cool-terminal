sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions

echo 'eval "$(starship init zsh)"
export ZSH="$HOME/.oh-my-zsh"
plugins=(
git
zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh' > ~/.zshrc

echo 'add_newline = false
format = "$python$directory$character"

[character]
success_symbol = "[➜](bold green) "
error_symbol = "[✗](bold red) "

[package]
disabled = true

[python]
format="(\\\($virtualenv\\\) )"' > ~/.config/starship.toml
