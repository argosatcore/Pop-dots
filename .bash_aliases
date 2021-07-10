#░█▀▄░█▀█░█▀▀░█░█░░░█▀█░█░░░▀█▀░█▀█░█▀▀░█▀▀░█▀▀
#░█▀▄░█▀█░▀▀█░█▀█░░░█▀█░█░░░░█░░█▀█░▀▀█░█▀▀░▀▀█
#░▀▀░░▀░▀░▀▀▀░▀░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀


# ------Handy aliases:
	
	#General use:
	alias ll='ls -alF'
	alias la='ls -A'
	alias li='ls -lih'
	alias l='ls -CF'
	alias c='clear'
	alias rm='rm -I'
	alias poweroff='systemctl poweroff'
	alias reboot='systemctl reboot'
	alias suspend='systemctl suspend'
	alias v='nvim'
	alias t='tmux'
	alias n='nnn'
	alias rec='wf-recorder'
	alias vrc='nvim ~/.vimrc'
	alias brc='nvim ~/.bashrc'
	alias prc='nvim ~/.profile'
	alias irc='nvim ~/.inputrc'
	alias barc='nvim ~/.bash_aliases'
	alias frc='nvim ~/.bash_functions'
	alias wrcss='nvim .config/waybar/style.css'
	alias wrc='nvim .config/waybar/config'
	alias src='nvim ~/.config/sway/config'
	alias trc='nvim ~/.tmux.conf'
	alias pst='nvim ~/Popstrap/popstrap.sh'
	alias v='nvim'
	alias t='tmux'
	alias ws='watch sensors'
	alias n='nnn'
	alias c='clear'
	alias configheader='toilet -f pagga'
	alias fp='ps aux | fzf'
	alias impose='pdfbook2 --paper=letter --outer-margin=0 --inner-margin=0 --top-margin=0 --bottom-margin=0 -n'

	#Apt:
	alias aptdate='sudo apt update'
	alias aptgradable='apt list --upgradable'
	alias aptgrade='sudo apt upgrade'
	alias throwapt='sudo apt remove'
	alias capture='sudo apt install'
	alias debcount='apt-cache search "" | wc -l'


	#Systemd:
	alias sd-all='systemctl list-units --type=service'
	alias sd-files='systemctl list-unit-files --type=service'
	alias sd-active='systemctl list-units --type=service --state=active'
	alias sd-running='systemctl list-units --type=service --state=running '
	alias sd-timer='systemctl list-timers'

	#Git
	alias gpull='git pull'
	alias gpush='git push -u'
	alias gadd='git add -u'
	alias gcom='git commit -m'


