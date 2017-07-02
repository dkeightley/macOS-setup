
# New macOS setup

## Install the basics

### Install Brew

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Install Java

https://www.oracle.com/technetwork/java/javase/downloads/index.html

### Install packages from Brew

`brew bundle install`

### Install Docker for Mac

https://docs.docker.com/docker-for-mac/install/

## Setup VIM

### Install pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

### Install solarized theme

`git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized`

### Install ansible-vim

`git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim`

### Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### Set the your preferred theme from the below

Agnoster

`sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="agnoster"/' ~/.zshrc`

#### OR

Lowerlevel9k (preferred)

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

`sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="powerlevel9k\/powerlevel9k"/' ~/.zshrc`

You can also copy the .zshrc file to your home dir

`cp .zshrc ~/`

#### zsh auto suggestions and highlighting

`git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
`git clone git://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`

#### Enable zsh plugins

`set -i '' 's/plugins=.*/plugins=(zsh-autosuggestions zsh-syntax-highlighting docker docker-compose aws tmux git ssh-agent)/ ~/.zshrc'`

OR

Copy the .zshrc file to your home dir

`cp .zshrc ~/`

#### Setup terminals with a custom font

The above themes won't look nice until you use a custom font

https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf

Install the font, and set both Terminal and iTerm2 to use the font

OR - you can load the included preferenes in this repo (*iterm2.plist and *.terminal)

## Setup macOS

Run the setup-macos.sh script

`./setup-macos.sh`

## Chrome Extensions

[https everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp)

[json-formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)

[ublock origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)

[vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)

[currently](https://chrome.google.com/webstore/detail/currently/ojhmphdkpgbibohbnpbfiefkgieacjmh?hl=en)
