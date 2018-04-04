#bash settings

export EDITOR=nano

#prompt
PS1="\[\e[01;34m\][\w] » \[\e[0m\]"

#alias

#colours
alias ls='ls --color=auto'
alias dir='dir --color=auto'

#system
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'
alias wifiup='sudo wifiup'
alias cava='./git/cava/cava'
alias dim='sudo sh -c "echo 1000>/sys/class/backlight/intel_backlight/brightness"'
alias bright='sudo sh -c "echo 5000>/sys/class/backlight/intel_backlight/brightness"'
alias nosleep='xset -display :0 s off -dpms && echo "done"'
alias task='htop'
alias fm='ranger'


#make things easier
alias nano='nano -l'
alias untar='tar -xvf'
alias tor='./git/torbrowser/Browser/start-tor-browser --detach'
alias mp3='youtube-dl -x --audio-format mp3'
alias gitpush='git push -u origin master'

#rice
alias xres='xrdb -merge ~/.Xresources'

#bash completion
if [[ -f /etc/bash_completion ]]; then
	. /etc/bash_completion
fi

#startx
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx &> /dev/null
fi
