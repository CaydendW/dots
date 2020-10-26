#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls -l -a --color=auto'
alias grep='grep -i --color'
alias cls='clear'
alias reddit='tuir'
alias video='mpv -vo=drm'
alias pic='sudo fbv'
alias bashrc='vim ~/.bashrc'
alias screenvideo='sudo ffmpeg -f fbdev -i /dev/fb0'
alias powersleep='sudo systemctl suspend'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'
alias mc='EDITOR=vim mc'
alias colors='sudo vim /etc/profile.d/colors.sh'
alias music='mpv -vo=drm --no-video --really-quiet'
alias please='sudo'
alias calc='bc'
alias calculator='bc'
alias fishrc='vim ~/.config/fish/config.fish'
alias py='python'
alias mountwin='sudo mount -t ntfs /dev/sda1 /mnt/c && sudo mount -t ntfs /dev/sdb2 /mnt/d'
alias teams='chromium https://teams.microsoft.com/_?culture=en-za&country=ZA&lm=deeplink&lmsrc=homePageWeb&cmpid=WebSignIn#/school/conversations/General?threadId=19:243e0d4b00d0432293dfab8ed2cb1f6f@thread.skype&ctx=channel'

# Bash prompt
export PS1="[\u@\h: \w]\$ "

# Editor
export EDITOR=vim
export VISUAL=vim

# Navi widget
source <(echo "$(navi widget bash)")

# Decide wether to run tmux
if [ "$TERM" = "linux" ]; then
	tmux
fi

#Load .bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Standard terminal start
clear

if [ "$TERM_PROGRAM" != "vscode" ] && [ "$TERM_PROGRAM" != "kate" ]; then
	neofetch
fi

#Path exports
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
