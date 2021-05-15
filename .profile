#░█▀█░█▀▄░█▀█░█▀▀░▀█▀░█░░░█▀▀
#░█▀▀░█▀▄░█░█░█▀▀░░█░░█░░░█▀▀
#░▀░░░▀░▀░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀


# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


# ------Environmental Variables:
	export EDITOR="nvim"
	export PAGER="less"
	export MANPAGER='nvim +Man!'
	export BROWSER="firefox"
	export TERM="xterm-256color"
	export PATH=$PATH:$HOME/bin:$HOME/.local/bin:/usr/local/sbin


# ------NNN's environmental variables:

	#Texteditor:
	export NNN_USE_EDITOR=1

	#Bookmarks:
	export NNN_BMS='p:~/Documents/;d:~/Downloads/;i:~/Pictures/'

	#Plugins:
	export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:dragdrop;t:nmount;v:preview-tui;z:fzcd'
	
	#Archive:
	export NNN_ARCHIVE="\\.(7z|bz2|gz|tar|tgz|zip)$"
	
	#Trash:
	export NNN_TRASH=1	

	
# ------If running bash:
	if [ -n "$BASH_VERSION" ]; then
	    # include .bashrc if it exists
	    if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	    fi
	fi


# ------Set PATH so it includes user's private bin if it exists:
	if [ -d "$HOME/bin" ] ; then
	    PATH="$HOME/bin:$PATH"
	fi


# ------Set PATH so it includes user's private bin if it exists:
	if [ -d "$HOME/.local/bin" ] ; then
	    PATH="$HOME/.local/bin:$PATH"
	fi


