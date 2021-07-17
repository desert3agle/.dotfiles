# Created by newuser for 5.8
autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

alias ls='ls --color=auto'

#history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=/home/khoya_musafir/.zsh_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.



# temprory status bar

alias now="date && cat /sys/class/power_supply/BAT0/capacity && cat /sys/class/power_supply/BAT0/status"

alias mkall="cd /home/khoya_musafir/dwm && sudo make clean install ; cd /home/khoya_musafir/dmenu && sudo make clean install; cd /home/khoya_musafir/st && sudo make clean install"

alias mkone="sudo make clean install"

# mouse fix
alias mousefix="sudo rmmod psmouse && sudo modprobe psmouse"

# aliases
alias gitlg="git log --graph --full-history --all --color"
alias gitls="git log --oneline --color"
alias gits="git status -s"
alias gita="git add"
alias gitcm="git commit -m"
alias gitcam="git add -A && git commit -m"
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


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
