#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"
#ZSH_THEME="agnoster"
#ZSH_THEME="gallois"

# Alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias screen22='ssh -t test screen -R 25098.13708.pts-0.ip-10-122-25-42'
alias screendung='ssh -t test-dung.lobangclub.com screen -R 14646.8342.pts-2.domU-12-31-38-06-C1-FA'
alias rc='python manage.py celeryd_multi restart w1 --settings=save22oscar.settings.development; tail -f w1.log'
alias screenez='ssh -t ez-test screen -R'
alias space='sudo du -ks ./* | sort -n'
alias space2='du -h --max-depth=1'
alias count='select count(*) from pg_stat_activity'
alias g='git'
alias c='clear'
alias clearpyc='find . -name "*.pyc" -exec rm -rf {} \;'
alias clearswp='find . -name "*.swp" -exec rm -rf {} \;'
alias findtxt='find . -maxdepth 3 -name settings_local.py -print0 | xargs -0 grep "bargain_auto"'
alias oscar='cd ~/Save22/server/Save22-Oscar-Backend'
alias dae='gnome-settings-daemon'

alias ma='./manage.py runserver_plus'
alias xclip='xclip -selection c'

#metric
alias chrome='google-chrome --proxy-server="192.168.0.1:3129" --proxy-bypass-list="127.0.0.1;192.168.0.178"'
alias genymotion='sudo -u lope /home/lope/Downloads/genymotion/genymotion'

# Extra stuff
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"
# history specific options
setopt hist_allow_clobber
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt extended_history
setopt inc_append_history

# autojump
if [ -f /usr/share/autojump/autojump.zsh ]; then
    source /usr/share/autojump/autojump.zsh
fi

# auth
if [ -f ~/.auth ]; then
    source ~/.auth
fi

# no proxy
export no_proxy=localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, python, django)

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

