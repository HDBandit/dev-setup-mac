# Setup mac for development guide

## General
### Development tools for mac
```script
xcode-select --install
```

### Homebrew
```script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

To make http requests:

```script
brew install wget
```

More information about Homebrew [here](https://brew.sh/index_es)

### Sublime

```script
brew cask install sublime-text
```

### Htop

```script
brew install htop
```

## Shell

### iTerm2

```script
brew cask install iterm2
```

### oh My Zsh

```script
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

Configure Agnoster theme in your file <strong>.zshrc</strong>

```script
ZSH_THEME="agnoster"
```

Remember to install Power Line Fonts (more information [here](https://github.com/powerline/fonts))
```script
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

More information about config [here](https://github.com/ohmyzsh/ohmyzsh)

IMPORTANT!! After installation configure on iTerm Profiles > Text > Font > Meslo LG DZ for Powerline

### Plugins Zsh

__For fancy highlighting syntax on the shell__
```script
brew install zsh-syntax-highlighting
```

Then configure at the end of your <strong>.zshrc</strong>

```script
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

More information about this plugin [here](https://github.com/zsh-users/zsh-syntax-highlighting)

__For auto suggestions on the shell__
```script
brew install zsh-autosuggestions
```

Then configure at the end of your <strong>.zshrc</strong>

```script
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

More information about this plugin [here](https://github.com/zsh-users/zsh-autosuggestions)

__For historic command line finder__
```script
brew install fzf
```

```script
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
```

Then configure at the end of your <strong>.zshrc</strong>

```script
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

More information about this plugin [here](https://github.com/junegunn/fzf)

__For getting information about Computer on shell startup__
```script
brew install neofetch
```

To run <strong>neofetch</strong> we need as requirement
```script
brew install w3m
```

Copy your desired startup image on <strong>$home/.config/neofetch/pictures/your_image.png</strong>

Then configure at the end of your <strong>.zshrc</strong>

```script
neofetch --iterm2 /Users/gerard/.config/neofetch/pictures/your_image.png
```

More information about this plugin [here](https://github.com/dylanaraps/neofetch)

__For OSX utilities__
Add in your .zshrc the following plugin
```script
plugins=(... osx)
```

More information about this plugin [here](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx)

__To fix last working directory__
Add in your .zshrc the following plugin
```script
plugins=(... last-working-directory)
```

More information about this plugin [here](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/last-working-dir)

__For navigate through the commands history__
Add in your .zshrc the following plugin
```script
plugins=(... history)
```

__For Google search__
Add in your .zshrc the following plugin
```script
plugins=(... web-search)
```

__For avoid to type sudo always__
Add in your .zshrc the following plugin
```script
plugins=(... sudo)
```

__To navigate very quickly to any already visited directory__
Add in your .zshrc the following plugin
```script
plugins=(... z)
```

### Aliases on zshrc file
```script
# show all the directories visited on the current terminal session
alias dirsh="dirs -v | fzf"

# update zsh configuration
alias update="source ~/.zshrc"

# check which process is running on a specific port
alias runp='f() {lsof -i :$1};f'

# check directory space
alias usage="du -h -d1"

# my ip
alias myip="curl http://ipecho.net/plain; echo"

# go to ssh dir
alias sshdir="cd ~/.ssh"

# zsh current version
alias zversion="zsh --version"
```

### Modify prompt zsh

Add at the end of your <strong>.zshrc</strong> the following code
```script
prompt_context() {
  # Custom (Random emoji)
  emojis=("🔥💀🔥")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}
```

## Other
```script
brew install imagemagick
```

```script
brew install hub
```

## Scripts
In order to make automatic pull requests from the terminal, this [script](https://github.com/HDBandit/dev-setup-mac/blob/master/scripts/pr.sh) fits perfectly.
Please configure company and repository.