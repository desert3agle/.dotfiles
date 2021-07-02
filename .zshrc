# Created by newuser for 5.8

alias ls='ls --color=auto'

# .zshrc

autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure


# temprory status bar

alias now="date && cat /sys/class/power_supply/BAT0/capacity && cat /sys/class/power_supply/BAT0/status"

alias compile="cd /home/khoya_musafir/dwm && sudo make clean install ; cd /home/khoya_musafir/dmenu && sudo make clean install; cd /home/khoya_musafir/st && sudo make clean install"


# mouse fix
alias mousefix="sudo rmmod psmouse && sudo modprobe psmouse"

# aliases

alias goback="git reset --hard HEAD~1"


. ~/z/z.sh

alias config='/usr/bin/git --git-dir=/home/khoya_musafir/.cfg/ --work-tree=/home/khoya_musafir'
