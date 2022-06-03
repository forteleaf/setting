# alias

alias ll="ls -la"

# color setting for terminal
```
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```

## tmux + alactirry

true color설정

화면 테스트

```bash
$ curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh >24-bit-color.sh
$ bash 24-bit-color.sh
```

# vim-vundle 설치

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

# zsh

## fedora

### zsh 설치

    $ sudo dnf install zsh

### oh-my-zsh 설치

설치와 기본 쉘에디터 설정

    $ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    $ sudo lchsh -i $(whoami)
    
리붓을 해야 적용이 된다.

### powerlevel9k 설치

    $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
