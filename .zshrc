export ZSH="/Users/gerard/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git osx last-working-dir history sudo web-search z)

source $ZSH/oh-my-zsh.sh

# Gerard aliases
alias dirsh="dirs -v | fzf"
alias update="source ~/.zshrc"
alias runp='f() {lsof -i :$1};f'
alias usage="du -h -d1"
alias myip="curl http://ipecho.net/plain; echo"
alias sshdir="cd ~/.ssh"
alias zversion="zsh --version"

# Commands to execute once terminal is started
neofetch --iterm2 /Users/gerard/.config/neofetch/pictures/monkey_icon.png

# Enable plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

prompt_context() {
  # Custom (Random emoji)
  emojis=("🔥💀🔥")
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}
