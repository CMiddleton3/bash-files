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
alias err='journalctl  -xe --since "60 minute ago'

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lvA --group-directories-first"
alias lm='ll | less -r'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias lam='ll -A | less -r'
alias l='ls -CF'

# exa LS Replacement for long direct searches.
alias lll=' exa -alghUmT --level=1 --group-directories-first --extended --color=always'
alias lllm=' exa -alghUmT --level=1 --group-directories-first --extended --color=always | less -r'

alias l1=' exa -alghUmT --level=1 --group-directories-first --extended --color=always'

# 2 Directories in
alias l2=' exa -alghUmT --level=2 --group-directories-first --extended --color=always'
alias l2m=' exa -alghUmT --level=2 --group-directories-first --extended --color=always | less -r'

# Three Directories in
alias l3=' exa -alghUmT --level=3 --group-directories-first --extended --color=always'
alias l3m=' exa -alghUmT --level=3 --group-directories-first --extended --color=always | less -r'

# Full Recursive
alias llr=' exa -alghUmT --group-directories-first --extended'
alias llrm=' exa -alghUmT --group-directories-first --extended --color=always | less -r'

# Programs
alias rr='ranger'
alias mt='multitail'
alias vi='vim'
alias gg='glances'
# Python 3
alias py='python3'
alias pip='pip3'

# Kubernetes
k='kubectl'


# Navigation
alias gh='cd ~'  # Go Home
alias glog='cd /var/log/'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../../'
alias gdv='cd /mnt/c/' # Add you own local development directory

# Windows programs
alias exp='explorer.exe .' 
alias powershell='powershell.exe'
alias pshell='powershell.exe'
alias dos='cmd.exe'
alias code='code'
alias note='notepad.exe'
