
# New Macbook Setup

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

```mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim```

#### Install solarized theme

```cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git```

#### Install ansible-vim

`git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim`
