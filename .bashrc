export PATH=/Applications/SenchaSDKTools:$PATH
export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools"
#colored terminal stuff & fixes
export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GREP_OPTIONS='--color=auto'
source "`brew --prefix grc`/etc/grc.bashrc"
#tmux stuff
#check if tmux is installed
#if which tmux 2>&1 >/dev/null; then
#    #if no session is started, start a new session
#    test -z ${TMUX} && tmux -2
#
#    #when quitting tmux, try to attach
#    while test -z ${TMUX}; do
#        tmux attach || break
#    done
#fi
# FIXES
################################################################################
# set sane process limit
ulimit -n 4096
# remove duplicates from command history list
export HISTCONTROL=erasedups
# increase history size
export HISTSIZE=10000
# set UTF-8 support
export LC_ALL="en_US.UTF-8"
#export LANG=en_US.UTF-8
# make Terminal interact with user in English
export LANG="en_US"
#set LC_CTYPE="en_US.UTF-8"
# fix some iTerm inputs for international characters
#set meta-flag on
#set input-meta on
#set output-meta on
#set convert-meta off
# prevent clobbering
set -o noclobber
# ensure history from session is appended to ~/.bash_history on exit
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# don't autocomplete empty lines
shopt -s no_empty_cmd_completion
# allow case-insensitive auto-completion
shopt -s nocaseglob
# allow minor typos in directory names for cd command
shopt -s cdspell
# allow extended glob patterns
shopt -s extglob
# allow builtin echo to expand backslash escape sequences
shopt -s xpg_echo
# use most instead of less for paging
export PAGER="most"
# configure TextMate as editor and for remote editing
export EDITOR="/usr/local/bin/mate -w"
export RMATE_HOST=auto
export RMATE_PORT=52698


# NOTES
################################################################################
# To temporarily bypass an alias, we preceed the command with a \  
# EG:  the ls command is aliased, but to use the normal ls command you would 
# type \ls

#ALIASES
################################################################################
# make ls use human readable file sizes
alias ls="gls -h --color=always"
# make ls list one entry per line
alias dir="gls -hG1 --color=always"
# make df more readable
alias df="gdf -H"
#Uni connection
alias tardis="ssh star_fire@ssh.tardis.ed.ac.uk"
# GNU echo
alias echo="gecho"
# colors script
alias colors="perl ~/Dropbox/Scripts/Colortest/256colors.perl"
# make htop sort by CPU usage and update only every 2 seconds and only show processes of current logged in user
alias htop="htop --sort-key PERCENT_CPU -d 20 -u `whoami`"
# delete all Apple System Log files (speeds up Terminal.app on first login)
alias delasl="sudo rm -f /private/var/log/asl/*.asl"
# flush dns cache (may not work after OS X 10.8?)
alias flushcache="dscacheutil -flushcache"
# get PID of a process by name
alias pidof="sh /Library/Scripts/pidof.sh"
# display text with figlet and toilet
alias toilet="toilet --gay -f mono9"
#alias destep="figlet -w 80 -nkf rowancap DESTEP TRED | tr 'd' '▟' | tr 'P' '▛' | tr 'M' '█' | tr 'V' '▜' | tr '\"' ' ' | tr '.' ' ' | tr 'a' '▟' | tr 'b' '▙' | tr 'K' '█' | tr 'A' '▟' | tr 'F' '▛' | tr 'Y' '▜' | tr 'v' '█' | tr 'm' '█' | tr 'r' '▛' | toilet -w 80 --gay -f term"
#alias destep="echo "" && figlet -f rowancap DESTEP TRED | tr '[A-Z]|[a-z]' '▐' | tr '.' ' ' | tr '\"' ' ' | toilet --gay -f term"
#alias destep="clear && echo "" && echo "" && echo "" && echo "" && echo "" && toilet -f future --gay '          destep'; toilet -f future --gay '           tred' && echo "" && echo "" && echo "" && echo """
#alias destep="clear && echo "" && echo "" && echo "" && echo "" && toilet -f kban --gay '     destep' | tr \|  ▉ | tr \.  ▄ | tr \' ▀ && toilet -f kban --gay '        tred' | tr \|  ▉ | tr \.  ▄ | tr \' ▀ && echo "" && echo """
alias destep="clear && toilet -f mono9 --gay destep tred"
#repair disk permissions
alias repair="diskutil repairpermissions"
#problem?
alias problem="clear && figlet -pf future problem? | toilet --gay -f term | cowsay -nf coolface | tr '/|\|_|-' ' ' | tr '\\' ' '"
#soon...
alias soon="clear && figlet -pf future SOON... | toilet --gay -f term | cowsay -nf tidus | tr '/|\|_|-' ' ' | tr '\\' ' '"
#start mpd with proper config file
alias mpd="killall mpd; open /Users/zach/Dropbox/Scripts/mpd\ configure.app;"
#view colorised live system log entries
alias syslog="tail -F /var/log/system.log | grcat conf.log"
#colorize tree output
alias tree="tree -AC"
#display some system info (OS X version, CPU, Mac model, GPU/display, disks)
alias sysprofile="sw_vers; system_profiler SPHardwareDataType | head -n 15; echo ""; system_profiler SPDisplaysDataType; df;"
#clear the terminal display
alias cl="clear"
#update WebKit nightly
alias updatewebkit="sh ~/Dropbox/Scripts/WebkitNightlyUpgradeScript.sh"
#poll Google Finance data for stock information
alias stockinfo="osascript ~/Dropbox/Scripts/stockinfo.applescript"
#a terminal clock
alias clock="tty-clock -s -c -t -C 1"
#fuck u python
alias pip="/usr/local/share/python/pip"
alias beet="/usr/local/share/python/beet"
#use graphical characters for pstree
alias pstree="pstree -g 3"
#make tmux use all available colors
alias tmux="tmux -2"
#unregister applications from LaunchServices in order to remove duplicate items
alias kls="/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user"
#use ssh protocol 2.0 and IPv6
#alias ssh="ssh -2 -6"

#TEXT COLORS
################################################################################
TXTBLK='\e[0;30m' 		# Black - Regular
TXTRED='\e[0;31m' 		# Red
TXTGRN='\e[0;32m' 		# Green
TXTYLW='\e[0;33m' 		# Yellow
TXTBLU='\e[0;34m' 		# Blue
TXTPUR='\e[0;35m' 		# Purple
TXTCYN='\e[0;36m' 		# Cyan
TXTWHT='\e[0;37m' 		# White
BLDBLK='\e[1;30m' 		# Black - Bold
BLDRED='\e[1;31m' 		# Red
BLDGRN='\e[1;32m' 		# Green
BLDYLW='\e[1;33m' 		# Yellow
BLDBLU='\e[1;34m' 		# Blue
BLDPUR='\e[1;35m' 		# Purple
BLDCYN='\e[1;36m' 		# Cyan
BLDWHT='\e[1;37m' 		# White
UNDBLK='\e[4;30m' 		# Black - Underline
UNDRED='\e[4;31m' 		# Red
UNDGRN='\e[4;32m' 		# Green
UNDYLW='\e[4;33m' 		# Yellow
UNDBLU='\e[4;34m' 		# Blue
UNDPUR='\e[4;35m' 		# Purple
UNDCYN='\e[4;36m' 		# Cyan
UNDWHT='\e[4;37m' 		# White
BAKBLK='\e[40m'   		# Black - Background
BAKRED='\e[41m'   		# Red
BAKGRN='\e[42m'   		# Green
BAKYLW='\e[43m'   		# Yellow
BAKBLU='\e[44m'   		# Blue
BAKPUR='\e[45m'   		# Purple
BAKCYN='\e[46m'   		# Cyan
BAKWHT='\e[47m'   		# White
TXTRST='\e[0m'    		# Text Reset

TXT236='\e[38;5;236m'		# Darkest Grey - Regular
TXT238='\e[38;5;238m'		# Darker Grey
TXT000='\e[38;5;000m'		# Dark Grey
TXT232='\e[38;5;232m'		# Black
TXTBRD='\e[38;5;088m'		# Bright Red
TXTBBR='\e[38;5;196m'		# Brightest Red

BAK233='\e[48;5;233m'		# Darkest Grey - Background
BAK241='\e[48;5;241m'		# Darker Grey
BAK000='\e[48;5;000m'		# Dark Grey
BAKBRD='\e[48;5;130m'		# Bright Red
BAKBBR='\e[48;5;166m'		# Brightest Red

#PROMPT
################################################################################
# cool prompt stuff
# based on a function found in bashtstyle-ng 5.0b1
# Original author Christopher Roy Bratusek (http://www.nanolx.org)
# Last arranged by zach Tue Jul 24 06:40:19 EDT 2012
function pre_prompt {
    specPWD=$(echo -n ${PWD} | sed "s/\/Users\/$USER/~/")	#Should now properly sed path of current user
    newPWD=$specPWD
    let promptsize=$(echo -n "_!___${USER}@${HOSTNAME}__${specPWD}"\ | wc -c | tr -d " ")
    let fillsize=(${COLUMNS})-${promptsize}
fill=""
    while [ "$fillsize" -gt "0" ]
    do 
       fill="${fill} "
    	let fillsize=${fillsize}-1
    done
    if [ "$fillsize" -lt "0" ]
    then
        let cutt=1-${fillsize}
        newPWD="…$(echo -n $specPWD | sed -e "s/\(^.\{$cutt\}\)\(.*\)/\2/")"
    fi
}

PROMPT_COMMAND=pre_prompt

PS1="\`if [ \$? = 0 ]; then echo \"${TXTBLK}${BAK241} \$ ${TXT236}${BAKBLK}→\"; else echo \"${TXTBLK}${BAKRED} ! ${TXTBRD}${BAKBLK}→\"; fi\`${TXTGRN}${BAKBLK} \u${BLDBLK}@${BLDCYN}\h ${TXTBLK}${BAKBLU}→${TXTRST}${BAKBLU}${BLDBLU} \$newPWD\${fill}${TXTRST}\n"

PS2="${TXTBLK}»${TXTRST}"
PS3="${TXTBLK}»${TXTRST}"
PS4="${TXTBLK}»${TXTRST}"

#EXTRAS
################################################################################
# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Better manual pages (uses --help as fallback if no man page exists)
man () {
    /usr/bin/man $@ || ($@ --help 2> /dev/null && $@ --help | $PAGER)
}

# Extract things. Thanks to urukrama, Ubuntuforums.org	
extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
#             *.rar)       rar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
#             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

imgur ()
{
        for FILE in "$@"
        do
                curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml < "$FILE" |
                        grep -Eo "<original>(.)*</original>" |
                        grep -Eo "http://i.imgur.com/[^<]*"
        done
}
