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
alias gitlg="git log --graph --full-history --all --color"
alias gitls="git log --oneline --color"
alias gits="git status -s"
alias gita="git add"
alias gitcm="git commit -m"
alias gitcam="git add -A && git commit -m"
alias gitpush="git push -u origin"
alias gitb="git branch"
alias gitbd="git branch -d"
alias gitco="git checkout"
alias goback="git reset --hard HEAD~1"
alias gitd="git diff --color"
alias gitrv="git remote -v"
alias gitra="git remote add"
alias gitrset="git remote set-url"

# make a seperate alias file and set up oh my zsh

. ~/z/z.sh

alias config='/usr/bin/git --git-dir=/home/khoya_musafir/.cfg/ --work-tree=/home/khoya_musafir'
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
