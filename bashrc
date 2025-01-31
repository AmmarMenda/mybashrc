#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias shuff='sh $HOME/shuffle.sh'
alias grep='grep --color=auto'
alias gayme='gamemoderun strangle 24 wine'
alias fsrgayme='WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_MODE=ultra gayme'
alias scoff='xset s off -dpms'
alias cupson='librewolf https://127.0.0.1:631'
alias picascii="asciiview -driver curses"
alias compinfo="hostnamectl"
alias meminfo="sudo dmidecode --type 17"
alias search="ls -a|grep -i"
function webmtomp4(){
ffmpeg -fflags +genpts -i $1 -r 24 $2
}
function playandshuff(){
	mpv "$1"  && shuff
}
HISTSIZE=-1
HISTFILESIZE=-1
PS1='[\u@\h \W]\$ '
