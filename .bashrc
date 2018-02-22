# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
BLUE='\033[1;34m'
NC='\033[0m'
echo -e "
${BLUE}
	      everything is important
              -----------------------${NC}
"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PATH="/home/trips/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/trips/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/trips/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/trips/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/trips/perl5"; export PERL_MM_OPT;
RANGER_LOAD_DEFAULT_RC="FALSE"; export RANGER_LOAD_DEFAULT_RC;

PS1='[\[\e[0;31m\]\u@\h \[\e[1;32m\]\W\[\e[00m\]] \$ '

# dircolors
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
    eval "`dircolors -b $DIR_COLORS`"

# aliases
alias ls="ls --color"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
cd() { builtin cd "$@" && ls; }

