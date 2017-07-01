
# New macOS setuo

### Install Brew

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Install Java

https://www.oracle.com/technetwork/java/javase/downloads/index.html

### Install packages from Brew

`brew bundle install`

### Install Docker for Mac

https://docs.docker.com/docker-for-mac/install/

### Setup VIM

#### Install pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

#### Install solarized theme

```
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
```

#### Install ansible-vim

`git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim`

#### Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Set the 'agnoster' theme

`sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="agnoster"/' ~/.zshrc`

Or try out the Powerlevel9k theme..

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

`sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="powerlevel9k\/powerlevel9k"/' ~/.zshrc`

#### Setup a custom font

The above themes won't look nice until you use a custom font

https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf

Install the font, and set both Terminal and iTerm2 to use the font
OR - you can install the included profiles in this repo
#### zsh auto suggestions

`git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`

