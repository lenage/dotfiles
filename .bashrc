#turn bash-completion on
#if [ -f /etc/bash_completion ];then
#	. /etc/bash_completion 
#fi

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR="vim"
##export MANPAGER="/usr/bin/most -s"
##ebv for me
PATH=~/bin:$PATH; export PATH
##env for tex 
PATH=/usr/local/texlive/2010/bin/i386-linux:$PATH; export PATH
MANPATH=/usr/local/texlive/2010/texmf/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2010/texmf/doc/info:$INFOPATH; export INFOPATH

##PATH for ec2
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=$EC2_HOME/pk-DOVW4U4A4T45YUPMSOINQQ2M5XKI2MFQ.pem
export EC2_CERT=$EC2_HOME/cert-DOVW4U4A4T45YUPMSOINQQ2M5XKI2MFQ.pem
#Java home for debian default install path:
export JAVA_HOME=/opt/java/jre
#add ec2 tools to default path
export PATH=~/.ec2/bin:$PATH
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi
##alias
alias amzn_ssh_aimb3202f25b='ssh -i ~/.ec2/ec2-keypair.pem ubuntu@ec2-75-101-223-158.compute-1.amazonaws.com -v'

# modified commands
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias ..='cd ..'

# new commands
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep $1'      # requires an argument
alias openports='netstat --all --numeric --programs --inet'
alias pg='ps -Af | grep $1'         # requires an argument (note: /usr/bin/pg is installed by the util-linux package; maybe a different alias name should be used)

# privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt'
    alias update='sudo pacman -Su'
    alias netcfg='sudo netcfg2'
fi

# ls
alias ls='ls -hF --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

# safety features
alias cp='cp -v'
alias mv='mv -i'
alias rm='rm -I -v'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

#grep's color output
export GREP_COLOR="1;33"
# Enable code syntax coloring for less
export LESS="-R"

#define colors for prompt and commands
alias facebook='ssh -i ~/.ec2/ec2-keypair.pem ubuntu@ec2-75-101-223-158.compute-1.amazonaws.com -v -Nf -D 7070'

#source ~/.local/bin/bashmarks.sh
#python 2to3
alias pserver='python2 -m SimpleHTTPServer'

#todo.txt
#alias t='todo -d ~/.todo.cfg ls'
