#
# ~/.config/fish/config/fish
#

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
alias fishrc='vim ~/.config/fish/config.fish'
alias calculator='bc'
alias py='python'
alias mountwin='sudo mount -t ntfs /dev/sda1 /mnt/c && sudo mount -t ntfs /dev/sdb2 /mnt/d'
alias teams='chromium https://teams.microsoft.com/_?culture=en-za&country=ZA&lm=deeplink&lmsrc=homePageWeb&cmpid=WebSignIn#/school/conversations/General?threadId=19:243e0d4b00d0432293dfab8ed2cb1f6f@thread.skype&ctx=channel'

# Editor
export EDITOR=vim
export VISUAL=vim

# Decide wether to run tmux
if [ "$TERM" = "linux" ]
	tmux
end

# Standard terminal start
clear

#Run neofetch
if [ "$TERM_PROGRAM" != "vscode" ] && [ "$TERM_PROGRAM" != "kate" ]
         neofetch
end

#Path exports
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
