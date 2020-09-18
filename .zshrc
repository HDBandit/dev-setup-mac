export ZSH="/Users/gerard/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git osx last-working-dir history sudo web-search z)

source $ZSH/oh-my-zsh.sh

# Gerard aliases
alias dirsh="dirs -v | fzf"
alias update="source ~/.zshrc"
alias runp='f() {lsof -i :$1};f'
alias process='p(){ps aux | grep -i :$1};p'
alias usage="du -h -d1"
alias myip="curl http://ipecho.net/plain; echo"
alias sshdir="cd ~/.ssh"
alias zversion="zsh --version"
alias gpr="bash ~/scripts/pr.sh"

# Commands to execute once terminal is started
neofetch --size none --iterm2 /Users/gerard/.config/neofetch/pictures/monkey_startup.png

# Enable plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

prompt_context() {
  # Custom (Random emoji)
  emojis=("🔥💀🔥")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}
