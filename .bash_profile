# User-specific system name
SystemName="REPLACE-ME"

# These commands are setting configurations related to the shell history in a bash script
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Source additional configuration files if they exist
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.win_aliases ]; then
    . ~/.win_aliases
fi

# Better looking man pages:
export MANPAGER="sh -c 'col -bx | vim -c \"set ft=man nomod nolist nowrap\" -'"

# Get system IP Address
THEip=$(ip route get 1 | awk '/src/ {print $7}')
THEip=${THEip:-"No Network"}

# Function to get random ANSI color code
get_random_color() {
    local colors=(31 32 33 34 35 36 91 92 93 94 95 96)
    echo "${colors[RANDOM % ${#colors[@]}]}"
}

# Function to colorize text
colorize() {
    local text="$1"
    local color_code="$2"
    if [[ "$3" == "ps1" ]]; then
        echo "\[\e[${color_code}m\]${text}\[\e[m\]"
    else
        echo "\e[${color_code}m${text}\e[0m"
    fi
}

# Assign random colors
SystemColor=$(get_random_color)
IPColor=$(get_random_color)
UserColor=$(get_random_color)

# PS1 prompt
export PS1="$(colorize "$SystemName" $SystemColor ps1)$(colorize "[$THEip]" $IPColor ps1)-$(colorize "\u" $UserColor ps1):\[\e[32m\]\w\[\e[m\]:\[\e[36m\]>>\[\e[m\] "

# Welcome Message
WelcomeColor=$(get_random_color)
WarningColor=$(get_random_color)

echo -e "$(colorize "Welcome to $SystemName @ $THEip" $WelcomeColor) | $(date '+%b %d %H:%M')"
echo -e "$(colorize "IP: $THEip" $IPColor)"
echo -e "$(colorize "HostName: $HOSTNAME" $HostNameColor)"
echo -e "$(colorize "RESTRICTED ACCESS SYSTEM!" $WarningColor)"
echo -e "$(colorize "Authorize Access Only!" $WarningColor)"
