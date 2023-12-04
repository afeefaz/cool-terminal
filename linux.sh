sudo apt install zsh unzip -y
curl -sS https://webi.sh/lsd | sh
cp ~/.local/bin/lsd /bin/lsd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions
curl -s https://ohmyposh.dev/install.sh | bash -s

echo 'export ZSH="$HOME/.oh-my-zsh"
HISTFILE=$ZSH/.zsh_history
plugins=(zsh-autosuggestions)
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit -d $ZSH/cache/zcompdump

#aliases
alias ls="lsd"
alias ll="lsd -lah"
eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cert.omp.json)"' > ~/.zshrc

source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zshrc
