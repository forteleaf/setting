#export TERMINAL=xfce4-terminal
export TERMINAL=alacritty
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct

#setxkbmap -option ctrl:swapcaps
ibus-daemon -rxR &

#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus

alias g='git'
alias vi='vim'
/usr/bin/env XDG_CONFIG_HOME=$HOME
