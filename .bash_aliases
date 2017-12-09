# Welcomes the user in this case me
# To the bash environment

notify-send -i "/home/username/Pictures/lightpic.jpg" \ "MACINTOSH-TERMINAL GREETINGS" \ "Good Day Sir LIGHT\nYou are Welcome Once Again \n Alo Monsieur Lumiere"

h=`date +%H`

if [ $h -lt 12 ];then
	notify-send -i "/home/username/Pictures/lightpic.jpg" \ 'LIGHT-U-PC - TERMINAL MSG' \ 'Hi Good Morning Sir Light\nBonjour Monsieur Lumiere\nIt is Nice having you back to Mac-Terminal'
elif [ $h -lt 18 ];then
	notify-send -i "/home/username/Pictures/lightpic.jpg" \ 'LIGHT-U-PC - TERMINAL MSG' \ 'Hi Good Afternoon Sir Light\nBon journee Monsieur Lumiere\nIt is Nice having you back to Mac-Terminal'
else
	notify-send -i "/home/username/Pictures/lightpic.jpg" \ 'LIGHT-U-PC - TERMINAL MSG' \ 'Hi Good Evening Sir Light\nBonne soiree\nIt is Nice having you back to Mac-Terminal'
fi

alias s1="sudo nginx -s quit; sudo /opt/lampp/lampp start; alert 'Hi starting the Server';"
alias s0="sudo /opt/lampp/lampp stop; alert 'Hi stoping the Server'; sudo nginx"
alias restart-netm="sudo service network-manager restart"

alias s6="sudo nginx -s quit; sudo /opt/lampp/lampp restart; alert 'Hi restarting the Server';"


alias ta="tmux attach";
alias sa="screen -r";


# My various aliases
alias gts="git status"
alias gthtdocs="cd /opt/lampp/htdocs"

#shortcut on terminal to commonly accessed files
alias gtcs="cd ~/Documents/ProgrammingRelated/"

#shortcut on terminal to most frequently worked on laravel project
alias gths="cd ~/Homestead/Code/myapp.com"
alias gtpom="git push origin master"
alias gtpod="git push origin develop"

alias ga="git add"
alias gc="git commit"

alias c="clear"
PATH=$PATH:/usr/local/nodejs/bin
alias v="sudo /usr/sbin/nginx -s quit; sudo /opt/lampp/lampp start; alert '\''Hi starting the Server'\'; cd ~/Homestead; vagrant up ; vagrant ssh ;"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .-="cd -"
alias c1="cd ~/Homestead/Code"
alias vl="vagrant ssh"

ANDROID_HOME=/home/username/Android/Sdk
PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

#mkdircd to create a folder and move into it so it becomes the current directory
function mkdircd(){ mkdir $1 && cd $1; }
function vm(){ cd ~/Homestead && vagrant ssh; }
# alias ttt="cat ~/bin/mtwds"
export PATH=~/.npm-global/bin:$PATH


# Git Autocomplete Functionality
if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi
