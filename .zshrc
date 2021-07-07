# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8

alias ls='ls --color=auto'

#history
SAVEHIST=1000
HISTFILE=/home/khoya_musafir/.zsh_history

# temprory status bar

alias now="date && cat /sys/class/power_supply/BAT0/capacity && cat /sys/class/power_supply/BAT0/status"

alias compile="cd /home/khoya_musafir/dwm && sudo make clean install ; cd /home/khoya_musafir/dmenu && sudo make clean install; cd /home/khoya_musafir/st && sudo make clean install"


# mouse fix
alias mousefix="sudo rmmod psmouse && sudo modprobe psmouse"

# aliases

alias goback="git reset --hard HEAD~1"


. ~/z/z.sh

alias config='/usr/bin/git --git-dir=/home/khoya_musafir/.cfg/ --work-tree=/home/khoya_musafir'
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
