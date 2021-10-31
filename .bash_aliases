# SysCMD
alias rm='rm -i'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'

# DU
alias du='du -h'
alias duu='du -sh'
alias duuu='du --max-depth=1 -h'


# Sys
alias pp='stat -c "%a %n" *'
alias ports='netstat -tulanp'
alias sc='systemctl'
alias cls='clear'
alias reload='source ~/.bash_profile'
alias q='exit'

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias l='ls -CF'


# Programs
alias rr='ranger'
alias mt='multitail'
alias vi='vim'
alias gg='glances --hide-kernel-threads --disable-sensors --process-short-name'
alias py='python.exe'

# Navigation
alias gh='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../../'
alias gdv='cd /mnt/c/' # Add you own local development directory

# Windows programs
alias exp='explorer.exe .' 
alias powershell='powershell.exe'
alias dos='cmd.exe'
