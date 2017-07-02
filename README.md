
# New macOS setup

This repo is designed to be run on a fresh macOS install, you can also run it on an existing install - everything should work the same.

## Install the basics

### Install Brew

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Install git and clone this repo

```
brew install git
git clone https://github.com/dkeightley/macOS-setup.git
cd macOS-setup
```

### Install Java

Grab Java first as some packages depend on it

https://www.oracle.com/technetwork/java/javase/downloads/index.html

### Install packages from Brew

Let brew do all the work installing the packages

`brew bundle install`

### Install Docker for Mac

https://docs.docker.com/docker-for-mac/install/

## Setup VIM

### Install pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

#### Install solarized theme

`git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized`

#### Install ansible-vim

`git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim`

#### Copy the .vimrc into place

`cp .vimrc ~/`

## Setup zsh

### Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### Copy the .zshrc file into place

`cp .zshrc ~/`

### Set the your preferred theme

Lowerlevel9k (preferred)

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

`sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="powerlevel9k\/powerlevel9k"/' ~/.zshrc`

#### OR

Agnoster

`sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="agnoster"/' ~/.zshrc`

#### zsh auto suggestions and highlighting

`git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
`git clone git://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`

## Setup terminals 

The above zsh themes won't look very nice until you get setup with the solarized theme and a custom font

Meslo is nice, however feel free to choose your own.

https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf

Click the .ttf and install the font, and setup both Terminal and iTerm2 with the solarized patched theme by importing the included preferenes in this repo (*iterm2.plist and *.terminal)

## Setup macOS

Run the setup-macos.sh script, this has a bunch of tweaks you won't find in System Preferences that I find useful

`./setup-macos.sh`

## Chrome Extensions

[https everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp)

[json-formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)

[ublock origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)

[vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)

[currently](https://chrome.google.com/webstore/detail/currently/ojhmphdkpgbibohbnpbfiefkgieacjmh?hl=en)

### Ahhh, that's better, time to reboot...



## Other bits..

If you like having some Docker OS's and apps locally for testing etc here's a good set to have pull'ed down.

```
for i in nginx centos ubuntu logstash swarm redis kibana elasticsearch jenkins
  do
    docker pull $i
done
```
