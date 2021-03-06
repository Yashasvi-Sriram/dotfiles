# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pandu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="yashasvisriram"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  command-time
)

source $ZSH/oh-my-zsh.sh

zsh_command_time() {
    if [ -n "$ZSH_COMMAND_TIME" ]; then
        hours=$(($ZSH_COMMAND_TIME/3600))
        min=$(($ZSH_COMMAND_TIME/60))
        sec=$(($ZSH_COMMAND_TIME%60))
        if [ "$ZSH_COMMAND_TIME" -le 60 ]; then
            timer_show="$fg[green]$ZSH_COMMAND_TIME s."
        elif [ "$ZSH_COMMAND_TIME" -gt 60 ] && [ "$ZSH_COMMAND_TIME" -le 180 ]; then
            timer_show="$fg[yellow]$min min. $sec s."
        else
            if [ "$hours" -gt 0 ]; then
                min=$(($min%60))
                timer_show="$fg[red]$hours h. $min min. $sec s."
            else
                timer_show="$fg[red]$min min. $sec s."
            fi
        fi
        printf "${ZSH_COMMAND_TIME_MSG}\n" "$timer_show"
    fi
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# sources
source /etc/profile.d/vte.sh

# exports
export EDITOR=/bin/nvim

# colors for less (the pager)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# aliases
alias r="ranger"
alias v="nvim"
alias tl="trash-list"
alias htop="htop --tree"
alias mounts="mount | grep -E '(/dev/sd|@|ifuse)'"
alias tig="tig --all"

# pacman aliases
alias pacc="pacman -Q | wc -l"
alias pacl="pacman -Q | fzf"
alias paci="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacu="sudo pacman -Syu"
alias pacac="cat /var/log/pacman.log | grep -aE '(installed|removed)' | sort -r | fzf"
alias pacclean="sudo pacman -Rns $(pacman -Qtdq)"
alias paccachedrop="sudo pacman -Scc"

# config files
alias cfi3="${EDITOR} ~/.config/i3/config"
alias cfi3b="${EDITOR} ~/.i3blocks.conf"
alias cft="${EDITOR} ~/.config/termite/config"
alias cfq="${EDITOR} ~/.config/qutebrowser/config.py"
alias cfz="${EDITOR} ~/.zshrc"
alias cfr="${EDITOR} ~/.config/ranger/rc.conf"
alias cfrifle="${EDITOR} ~/.config/ranger/rifle.conf"
alias cfv="${EDITOR} ~/.config/nvim/init.vim"
alias cfzathura="${EDITOR} ~/.config/zathura/zathurarc"
alias cfdunst="${EDITOR} ~/.config/dunst/dunstrc"
alias cftmux="${EDITOR} ~/.tmux.conf"
alias cfmutt="${EDITOR} ~/.neomutt/neomuttrc"
alias cfmbsync="${EDITOR} ~/.mbsyncrc"
alias cfmsmpt="${EDITOR} ~/.msmtprc"

# git aliases
alias gits="git status"
alias gitl="git log"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"
alias gitd="git diff"
alias gitb="git branch"
alias gito="git checkout"
alias gitk="nohup gitk --all > /dev/null &"

#jetbrains aliases
alias pycharm="nohup ~/jetbrains/pycharm/bin/pycharm.sh > /dev/null &"
alias clion="nohup ~/jetbrains/clion/bin/clion.sh > /dev/null &"
alias android-studio="nohup ~/jetbrains/android-studio/bin/studio.sh > /dev/null &"
alias adb="~/jetbrains/android/platform-tools/adb"
alias idea="nohup ~/jetbrains/idea/bin/idea.sh > /dev/null &"

# mount aliases
alias mountwinc="sudo mount /dev/sda4 /home/pandu/mounts/winc"
alias umountwinc="sudo umount /home/pandu/mounts/winc"
alias mounthyperdrive="sudo mount /dev/sda5 /home/pandu/mounts/hyperdrive"
alias umounthyperdrive="sudo umount /home/pandu/mounts/hyperdrive"
alias mountubuntu="sudo mount /dev/sda7 /home/pandu/mounts/ubuntu && ranger /home/pandu/mounts/ubuntu/home/pandu/"
alias umountubuntu="sudo umount /home/pandu/mounts/ubuntu"

# ssh aliases
alias sshmars="ssh yashsriram@mars.cse.iitb.ac.in"
alias sshkrishna="ssh yashasvi@10.129.2.170"
alias sshpascal="ssh yashsriram@10.129.131.78"
alias sshrpi="ssh pi@10.9.160.221"
alias sshjohn="ssh yashsriram@10.198.44.121"

# sshfs aliases
unmount_all_ssh_filesystems () {
  mount | grep @ | awk '{print $3}' | for i in $(cat); do fusermount -u $i; done
}
alias usshfsall="unmount_all_ssh_filesystems"
# mars
alias sshfsmars="sshfs /home/pandu/sshfs/mars yashsriram@mars.cse.iitb.ac.in: ; ranger /home/pandu/sshfs/mars"
alias usshfsmars="fusermount -u /home/pandu/sshfs/mars"
# pascal
alias sshfspascal="sshfs /home/pandu/sshfs/pascal yashsriram@10.129.131.78: ; ranger /home/pandu/sshfs/pascal"
alias usshfspascal="fusermount -u /home/pandu/sshfs/pascal"
# krishna
alias sshfskrishna="sshfs /home/pandu/sshfs/krishna yashasvi@10.129.2.170: ; ranger /home/pandu/sshfs/krishna/comma/results/8thsem/"
alias usshfskrishna="fusermount -u /home/pandu/sshfs/krishna"
# raspberrypi
alias sshfsrpi="sshfs /home/pandu/sshfs/raspberrypi pi@10.9.160.83: ; ranger /home/pandu/sshfs/raspberrypi"
alias usshfsrpi="fusermount -u /home/pandu/sshfs/raspberrypi"
# raspberrypi
alias sshfscselabs="sshfs /home/pandu/sshfs/cselabs patku001@cs-trombone.cs.umn.edu: ; ranger /home/pandu/sshfs/cselabs"
alias usshfscselabs="fusermount -u /home/pandu/sshfs/cselabs"

