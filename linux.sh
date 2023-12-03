sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions
curl -sS https://starship.rs/install.sh | sh

echo 'eval "$(starship init zsh)"
export ZSH="$HOME/.oh-my-zsh"
plugins=(zsh-autosuggestions)' > ~/.zshrc

echo 'add_newline = false
format = "$python$directory$character"

[character]
success_symbol = "[➜](bold green) "
error_symbol = "[✗](bold red) "

[python]
format="(\\\($virtualenv\\\) )"' > ~/.config/starship.toml

source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zshrc
