# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export TERM="xterm-256color"
# export LC_CTYPE="en_US.UTF-8"

# Path to your oh-my-zsh installation.
# export ZSH="/home/pmac/.oh-my-zsh"

source ~/.fonts/*.sh

POWERLEVEL9K_IGNORE_TERM_COLORS=true
# POWERLEVEL9K_IGNORE_TERM_LANG=true



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# echo "Setting ZSH_THEME"

# ZSH_THEME="agnoster"
# ZSH_THEME="dracula"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_IGNORE_TERM_COLORS=true
# POWERLEVEL9K_IGNORE_TERM_LANG=true

plugins=(
	git
	#fedora 
	#virtualenv 
	#python 
	#pyenv 
	colorize 
	zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs newline user status root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs history command_execution_time time)

POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\UE0BC"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\UE0BA"
POWERLEVEL9K_USER_ICON_BACKGROUND="white"

POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE='awesome-fontconfig'

# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱ "
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "

# POWERLEVEL9K_HOME_SUB_ICON=$'\UE18D '

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M %m.%d.%y}"
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_STATUS_VERBOSE=true # false

# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_NODE_VERSION_BACKGROUND='022'

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
# POWERLEVEL9K_OS_ICON_BACKGROUND="066" #012 
# POWERLEVEL9K_OS_ICON_FOREGROUND="blue"

# POWERLEVEL9K_STATUS_ICON_BACKGROUND="green"
# POWERLEVEL9K_STATUS_ICON_FOREGROUND="grey" 

# POWERLEVEL9K_LINUX_ICON=""
# POWERLEVEL9K_LINUX_CENTOS_ICON_BACKGROUND='021' # Dark blue
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
# POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

source ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

## set colors for LS_COLORS

#eval `dircolors ~/.dircolors`

eval `dircolors $HOME/.bin/.dircolors/` # dircolors.256dark`

# eval 'dircolors /mnt/c/users/pmac2/git/9615021/bash-dircolors-monokai'
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

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ "$USER" != "root" ]; then
	export DEFAULT_USER="$USER"
fi

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

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# export DOCKER_HOST=tcp://0.0.0.0:2375

# autoload bashcompinit
# bashcompinit

# You may also want to source the completion script (for zsh):
# source $HOME/software/rez/completion/complete.sh

# REZ SETUP
# export PATH=$HOME/software/rez/bin/rez:$PATH


export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

#######################################################
######## ZSH options ##########
#######################################################
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
unsetopt BG_NICE
setopt CORRECT
setopt EXTENDED_HISTORY
setopt MENUCOMPLETE
setopt ALL_EXPORT


#####################################################
### Autoload zsh modules when they are referenced ##
#####################################################
autoload -U history-search-end
zmodload -a zsh/stat stat
# zmodload -a zsh/zpty zpty
# zmodload -a zsh/zprof zprof
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end


######################################################
############## Bind keys ##############
######################################################
autoload -U compinit
compinit
bindkey "^?" backward-delete-char
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[6~' down-line-or-history
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
bindkey "^r" history-incremental-search-backward
bindkey ' ' magic-space # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
#zstyle ':completion:*' menu select=1 _complete _ignored _approximate
#zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/2 )) numeric )'
# zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

# allow one error for every three characters typed in approximate completer
# zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/2 )) numeric )'
 
# insert all expansions for expand completer
# zstyle ':completion:*:expand:*' tag-order all-expansions

# formatting and messages
# zstyle ':completion:*' verbose yes
# zstyle ':completion:*:descriptions' format '%B%d%b'
# zstyle ':completion:*:messages' format '%d'
# zstyle ':completion:*:warnings' format 'No matches for: %d'
# zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
# zstyle ':completion:*' group-name ''

# match uppercase from lowercase
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# offer indexes before parameters in subscripts
# zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# command for process lists, the local web server details and host completion
# on processes completion complete all user processes
# zstyle ':completion:*:processes' command 'ps -au$USER'

## add colors to processes for kill completion
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

#zstyle ':completion:*:processes' command 'ps -o pid,s,nice,stime,args'
#zstyle ':completion:*:urls' local 'www' '/var/www/htdocs' 'public_html'

