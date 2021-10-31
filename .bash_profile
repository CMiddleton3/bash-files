# User specific System name   
SystemName="CentOS-Server"

# Get system IP Address
THEip=$(ifconfig $(route -n | grep ^0.0.0.0 | awk '{print $NF}') | grep inet | grep -v inet6 | awk '{print $2}')


# Better looking Prompt with name, ip and working directory

export PS1="\[\e[36m\]$SystemName\[\e[m\][\[\e[33m\]@"$THEip"[\e[m\]]-\[\e[31m\]\u\[\e[m\]-:\[\e[32m\]\w\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[34m\]>>\[\e[m\] "

# Welcome Message with important information

echo -e "\e[34m Welcome to \e[32m $SystemName @"$THEip" \e[0m | $(date '+%b %d %H:%M') | \e[91m $HOSTNAME"
echo -e "\e[34m IP: \e[33m $THEip \e[0m"
echo -e "\e[34m HostName: $HOSTNAME \e[0m"
echo -e "\e[31m RESTRICTED ACCESS SYSTEM!"
echo -e "\e[31m Authorize Access Only!"
