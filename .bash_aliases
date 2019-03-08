# some more ls aliases
alias ll='ls -alF --color -h --group-directories-first'
alias la='ls -A --color -h --group-directories-first'
alias l='ls -CF --color -h --group-directories-first'
alias ls='ls ---color -h --group-directories-first'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Config management (config = git)
alias config='/usr/bin/git --git-dir=/home/pmac/.cfg/ --work-tree=/home/pmac'
alias pconfig='config commit -a -m "Updated config"; config push origin master'
alias uconfig='curl -fsL https://git.io/fhhYM | /bin/bash'

# Misc other aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ww='cd /mnt/c/users/pmac2'
alias c='code'

