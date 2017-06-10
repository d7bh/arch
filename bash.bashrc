###############################################
# ___ ____ ____ ____   suggest me alias:      #
#||d |||7 |||b |||h || danieltlamka at        #
#||__|||__|||__|||__|| outlook.com            #
#|/__\|/__\|/__\|/__\|                        #
#         ____ ____ ____ ____ ____ ____       #
#        ||c |||o |||n |||f |||i |||g ||      #
#        ||__|||__|||__|||__|||__|||__||      #
#        |/__\|/__\|/__\|/__\|/__\|/__\|      #
###############################################
#                  ls                         #
###############################################
[[ $- != *i* ]] && return
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias lr='ls -R'
alias lz='ls -rS'	#sort by size
alias lx='ls -BX'	#sort by entension
alias lt='ls -rt'	#sort by date
###############################################
#            Install/uninstall                #
###############################################
alias myy='yaourt -Sy'
alias myy-='yaourt -R'
alias my='sudo pacman -Sy'
alias my-='sudo pacman -R'
alias pacsize='pacman -Qi | egrep "^(Name|Installed)" | cut -f2 -d":" | tr "\nK" " \n" | sort -nrk 2 | less' 
alias findbigfiles='expac "%n %m" -l"\n" -Q $(pacman -Qq) | sort -rhk 2 | less'
###############################################
#                layouts                      #
###############################################
alias layout+='lwsm save'
alias layout-='lwsm restore'
###############################################
#              edit config                    #
###############################################
alias editbash='sudo bluefish /etc/bash.bashrc'
alias editxinit='sudo bluefish /etc/X11/xinit/xinitrc'
alias editxresources='sudo bluefish ~/.Xresources'
alias editgrub='sudo bluefish /etc/default/grub'
alias refresh-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias htdocs='sudo thunar /opt/lampp/htdocs'
alias hosts='sudo bluefish /etc/hosts'
###############################################
#                mount/connent                #
###############################################
alias cndroid='sudo simple-mtpfs --device 1 ~/mnt/android'
alias dndroid='sudo fusermount -u ~/mnt/android'
alias cndroid-list='simple-mtpfs --list-devices'
alias cnusb='sudo mount /dev/sdb1 /mnt/usb'
alias cndisk='sudo mount /dev/sdb5 /mnt/sdb5'
alias dndisk='sudo umount /dev/sdb5'
alias dnusb='sudo umount /dev/sdb1'
alias listdevices='lsblk -f'
alias ldev='lsblk -f'
alias cn1='sudo netctl start acidnet'
alias cn2='sudo netctl start virusnet'
alias wi='sudo wifi-menu'
###############################################
#                  youtube                    #
###############################################
alias syncyt='sudo youtube-dl -citw "https://www.youtube.com/channel/UCZzyTTmmMcZd3ZVarZgQ3-Q/playlists"'
alias fastyt='sudo youtube-dl -citw'
alias fastytmp3='sudo youtube-dl --extract-audio --audio-format mp3 -citw'
###############################################
#                   other                     #
###############################################
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias +='sudo '
alias agn='reboot'
alias die='poweroff'
alias xq='exit'
alias xq-terms='killall xterm'
alias pwrite='sudo chmod 755 -R'
alias a='sudo atom'
alias menu='j4-dmenu-desktop'
alias f='firefox google.cz'
alias fm='sudo pcmanfm ~/'
alias startuptime='systemd-analyze blame'
###############################################
#               release                       #
###############################################
alias gitc="git commit -m"
alias gitr="git push -u origin master"
###############################################
#              modify files                   #
###############################################
alias enhance='function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:$#-1} "input/`basename ${@:$#}`"; }; ne'

alias tmux='tmux -2'
alias pidfind='ps aux | grep'
if [ -z "$DISPLAY" ]; then
   export LANG=en_US.UTF-8
   unset LANGUAGE
fi
export LD_LIBRARY_PATH=/home/iwen/LinuxDeepin/SpeechCtrl/bin/i686:$LD_LIBRARY_PATH
alias hostsup='~/Public/updateHosts.sh'
alias ctags-prog='ctags -R --c-kinds=+p --fields=+S .'
#enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
export GOPATH=/Datas/GoLang
PAGER="/usr/bin/most -s"
transset-df -a >/dev/null
date | lolcat