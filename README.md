# DEVICE

## archlinux
2023.1.1 archlinux 로 개발기기를 변경. Lenovo L15 gen1

# linux swap ctrl - capslock

```config
! swap Ctrl and Alt keys

! here's the default setting on special keys
!  xmodmap -pke | grep -P '(Control|Super|Alt|Menu)'

! keycode  37 = Control_L NoSymbol Control_L
! keycode  64 = Alt_L Meta_L Alt_L Meta_L
! keycode 105 = Control_R NoSymbol Control_R
! keycode 108 = Alt_R Meta_R Alt_R Meta_R
! keycode 133 = Super_L NoSymbol Super_L
! keycode 134 = Super_R NoSymbol Super_R
! keycode 135 = Menu NoSymbol Menu
! keycode 147 = XF86MenuKB NoSymbol XF86MenuKB
! keycode 204 = NoSymbol Alt_L NoSymbol Alt_L
! keycode 206 = NoSymbol Super_L NoSymbol Super_L

clear Control
clear Lock
keysym Control_L = Caps_Lock
keysym Caps_Lock = Control_L
add Lock = Caps_Lock
add Control = Control_L

```

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
    
# key mapping

- https://hidutil-generator.netlify.app/
- karabiner

한글파일 깨짐

```bash
convmv -r -f utf8 -t utf-8 --nfc --notest ./
```
