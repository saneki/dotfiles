export EDITOR=vim
export PAGER=less
export BROWSER=dwb
export MANWIDTH=80

export HISTSIZE=16383
export SAVEHIST=16383
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth

export XDG_DOWNLOAD_DIR=~/incoming
export XDG_DOTFILES_DIR=~/.dotfiles
export XDG_TRASH_DIR=~/.trash
export XDG_BIN_DIR=~/bin
export XDG_TMP_DIR=~/tmp
export XDG_AUR_HOME=~/src/aur

export TEXINPUTS=".:$XDG_DATA_HOME/texmf//:"
export NNTPSERVER='news.orange.fr'
export PYTHONIOENCODING=utf-8
export OWL_MAX_URL=21
export STDERRED_ESC_CODE=$(echo -e "\e[38;5;210m")

export SHELL_CONFIG=~/.bashrc
export SHELL_PROFILE=~/.bash_profile
export SHELL_ALIASES=~/.shell_aliases
export SHELL_FUNCTIONS=~/.shell_functions

export DATA=/media/data
export MICRO=/media/micro
export HEXAGON=/media/hexagon
export LACIE=/media/lacie

export LESS_TERMCAP_mb=$'\e[1;35m'    # begin blinking
export LESS_TERMCAP_md=$'\e[1;34m'    # begin bold
export LESS_TERMCAP_me=$'\e[0m'       # end mode
export LESS_TERMCAP_se=$'\e[0m'       # end standout-mode
export LESS_TERMCAP_so=$'\e[1;40;33m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'       # end underline
export LESS_TERMCAP_us=$'\e[1;32m'    # begin underline

[ -d "$XDG_BIN_DIR" ] && export PATH="$PATH:$XDG_BIN_DIR"

if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
  startx >& ~/.Xlog
  cp ~/.Xlog ~/.Xlog.bak
  logout
fi
