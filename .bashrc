#░█▀▄░█▀█░█▀▀░█░█░█▀▄░█▀▀
#░█▀▄░█▀█░▀▀█░█▀█░█▀▄░█░░
#░▀▀░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀

# ------Shopt variables:
	#shopt -s globstar
	shopt -s checkwinsize
	shopt -s histappend
	shopt -s cdspell
	shopt -s autocd
	complete -d cd


# ------Vim mode:
	set -o vi 
	bind 'set show-mode-in-prompt on'
	bind 'set vi-ins-mode-string +'
	bind 'set vi-cmd-mode-string -'
	bind -m vi-insert "\C-l":clear-screen
	bind -m vi-insert "\C-e":end-of-line
	bind -m vi-insert "\C-a":beginning-of-line
	bind -m vi-insert "\C-h":backward-kill-word
	bind -m vi-insert "\C-k":kill-line


# ------If not running interactively, don't do anything
	case $- in
	    *i*) ;;
	      *) return;;
	esac


# ------Don't put duplicate lines or lines starting with space in the history.
	HISTCONTROL=ignoreboth


# ------For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
	HISTSIZE=1000
	HISTFILESIZE=2000


# ------Make less more friendly for non-text input files, see lesspipe(1)
	[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# ------Set variable identifying the chroot you work in (used in the prompt below)
	if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	    debian_chroot=$(cat /etc/debian_chroot)
	fi


# ------Set a fancy prompt (non-color, unless we know we "want" color)
	case "$TERM" in
	    xterm-color|*-256color) color_prompt=yes;;
	esac


# ------Uncomment for a colored prompt, if the terminal has the capability; turned
	#force_color_prompt=yes
	if [ -n "$force_color_prompt" ]; then
	    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		color_prompt=yes
	    else
		color_prompt=
	    fi
	fi
	
	if [ "$color_prompt" = yes ]; then
		PS1='${debian_chroot:+($debian_chroot)}';	 
		PS1+='\[\033[01;97m\]['; 
		PS1+='\[\033[01;96m\]\w';
		PS1+='\[\033[01;97m\]]';
		PS1+='\[\033[00;00m\]: ';
	
	else
	    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
	fi
	unset color_prompt force_color_prompt


# ------If this is an xterm set the title to user@host:dir
	case "$TERM" in
	xterm*)
	    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	    ;;
	*)
	    ;;
	esac


# ------Enable color support of ls and also add handy aliases:
	if [ -x /usr/bin/dircolors ]; then
	    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	    alias ls='ls --color=auto'
	    alias dir='dir --color=auto'
	    alias vdir='vdir --color=auto'
	    alias grep='grep --color=auto'
	    alias fgrep='fgrep --color=auto'
	    alias egrep='egrep --color=auto'
	fi


# ------Colored GCC warnings and errors:
	#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# ------Add an "alert" alias for long running commands.  Use like so:
	#sleep 10; alert
	alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# ------Alias definitions:
	if [ -f ~/.bash_aliases ]; then
    	. ~/.bash_aliases
	fi


# ------Functions definitions:
	if [ -f .bash_functions ]; then
    	. ~/.bash_functions
	fi


# ------Enable programmable completion features: 
	if ! shopt -oq posix; then
	  if [ -f /usr/share/bash-completion/bash_completion ]; then
	    . /usr/share/bash-completion/bash_completion
	  elif [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
	  fi
	fi

