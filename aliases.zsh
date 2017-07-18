# File containing Aliases for ZSH

alias edcron='sudo crontab -u mike -e'
alias edpk='vim ~/Documents/Backup\ Notes/Manjaro/Manjaro_PackageList.sh'
alias edvim='vim ~/.vimrc'
alias edmux='vim ~/.tmux.conf'
alias zrc='vim ~/.zshrc'
alias zali='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias edtheme_zsh='vim ~/.oh-my-zsh/themes/blutek.zsh-theme'
alias ed3='vim ~/.config/i3/config'
alias edstat='vim ~/.i3status.conf'


alias todo='cherrytree /home/mike/Documents/CherryTree_Notes/Todo.ctb'

h(){
	history | uniq -f 2 |egrep $@ | tail
}

alias ht='history|tail'

alias j='jobs -l'

# alias fx='find "$1" -iname "$2"  -exec $3 ;'
# alias find='find -iname "$@" '

alias l='ls --color=auto'
#alias l.='ls -a | egrep "'^\\.'"'
alias l.='ls -d .[!.]?* '
alias lsg='ls -a|grep -i --color=auto'
alias lsgr='ls -a | egrep -i '


alias cp='cp -i'
alias df='df -h'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias free='free -m'
alias grep='grep --color=auto'
alias more='less'
alias g='egrep '


## Date/Time ##
alias now='date +"%T"'
alias nowtime='now'
alias nowdate='date +"%m-%d-%Y"'


alias mkdir='mkdir -pv'

alias c='cd'

#### Package Manager Aliases ####

## Check to See what type of OS is being used ##

# For an Arch Linux Based OS #
if [ -d /etc/pacman.d ]
then
	alias pacman='pacman --color always'
	
	alias pacs='pacman -Ss'
	alias pacup='sudo pacman -Syu --noconfirm'
	alias pacupp='sudo pacman -Suu --noconfirm'
	alias pacr='sudo pacman -Rsv'
	alias pacpurge='sudo pacman -Rsuv'
	alias pacq='pacman -Qs'
	alias paci='pacman -Qi'
	alias pacf='pacman -Si'
	
	alias aurs='yaourt -Ss'
	alias aurin='yaourt -S --noconfirm'
	alias aurup='yaourt -Su --noconfirm'
	
	alias appk='pacman -Qe | cut -d " " -f 1 > ~/Documents/Backup\ Notes/Manjaro/"$(date +"%m_%d_%Y")_Manjaro_Installed_Packages"'
fi

# For a Debian Based OS #
if [ -d /etc/apt.d ]
then
	alias apt='apt --color always'
	
	alias aps='apt search '
	alias apup='sudo apt-get update'
	alias apupp='sudo apt-get update && sudo apt-get upgrade'
	alias apr='sudo apt-get remove '
	alias appurge='sudo apt-get remove '
alias apq='apt-cache '
	alias api='apt-cache package'
	alias apf='apt-cache list '
	
	alias appk='apt -Qe | cut -d " " -f 1 > ~/Documents/Backup\ Notes/Debian/"$(date +"%m_%d_%Y")_Debian_Installed_Packages"'
fi

# For a Fedora Based OS #
if [ -d /etc/yum.d ]
then
	alias yum='yum --color always'
	
	alias ys='yum search '
	alias yup='sudo yum update'
	alias yupp='sudo yum update && sudo yum upgrade'
	alias yremove='sudo yum remove '
	alias ypurge='sudo yum remove '
	
	alias appk='yum -Qe | cut -d " " -f 1 > ~/Documents/Backup\ Notes/Fedora/"$(date +"%m_%d_%Y")_Fedora_Installed_Packages"'
fi


## Navigation Aliases ##
alias navprog='cd ~/Programming'
alias navmusic='cd ~/Music/Music\ Videos/'
alias navcol='cd ~/Documents/College'
alias navpk='cd ~/Documents/Backup\ Notes/Manjaro'
alias navbk='cd ~/Documents/Books'
alias navman='cd ~/Documents/Books/Manuals'
alias navcut='cd ~/Documents/Books/Manuals/Cheat\ Sheets/'
alias navGame='cd ~/Projects/Julia/RTSAI_Game/ '
navwin(){
	cd '/home/mike/.wine/drive_c/Program Files (x86)'
}


#### Application Aliases ####
alias info='info --vi-keys'
alias music='vlc -Z ~/Music/Music\ Videos/*'
alias fpv='firefox --private-window'
alias tmux='tmux -f ~/.tmux.conf'
alias top='htop'
alias xmind='XMind'
alias antlr4='java -Xmx500M -cp "/usr/share/java/antlr-4.6-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.gui.TestRig'
alias vi='vim'
alias dartium='exec /opt/dartium/chrome --user-data-dir=/opt/dartium'
alias symata='julia -i -e "using Symata"'
sshot(){
	scrot -s '%m-%d-%Y_$wx$h_scrot.png' 
	mv ~/*scrot\.png ~/Pictures/Screenshots # Quick & Dirty, but works (for now...)
}

alias cscreen='cmatrix -ab -u 2 -C blue '

## Very Secure File Destruction ##
alias sshred='shred -u --iterations=8 -z '

eradicate()
{
	find * | parallel -j+0 --eta 'shred -vu --iterations=8 -z' 
	rm -ri * 
}

## Network Related ##
alias ports='netstat -tulanp'

# Generate Username & Password Pair
genpasswd(){
	echo 'Username: '  $(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo)

	echo 'Password: '  $(strings /dev/urandom | grep -o '[1234567890!@#$%^&*()-=_+`~,./\;{}:"?|<>QWERTGFDSAZXCVBYUIOPHJKLNMqwertasdfgzxcvbyuiophjklnm]' | head -n 30 | tr -d '\n'; echo)

}

# Quick Youtube-Dl function for ZSH


# Command for passing script files to MongoDB
[[ -f /usr/bin/mongo ]] && mshell(){ mongo --quiet --shell < "$@" | grep -v "type\ \"help\"\ for\ help" } 
