if [ (tty) = "/dev/tty1" ]
	sleep 1 && startx
end

if tty | grep -q "/dev/tty"
	$HOME/.config/scripts/set_tty_colors.sh
end

#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    #ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi

#if [[ ! "$SSH_AUTH_SOCK" ]]; then
    #eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")"
#fi

export BROWSER=/usr/bin/firefox
export AUR_PAGER="$HOME/.config/scripts/rangerp.sh"
export BEMENU_SCALE=2
export BEMENU_OPTS="\
 --list 10		\
 --tb  '#6272a4'\
 --tf  '#f8f8f2'\
 --fb  '#282a36'\
 --ff  '#f8f8f2'\
 --nb  '#282a36'\
 --nf  '#6272a4'\
 --hb  '#44475a'\
 --hf  '#50fa7b'\
 --sb  '#44475a'\
 --sf  '#50fa7b'\
 --scb '#282a36'\
 --scf '#ff79c6'\
"

alias extend-hdmi="xrandr --output eDP-1-1 --auto --output HDMI-1-1 --auto --right-of eDP-1-1"
alias clone-hdmi="xrandr --output eDP-1-1 --auto --output HDMI-1-1 --auto --same-as eDP-1-1"
alias disable-hdmi="xrandr --output eDP-1-1 --auto --output HDMI-1-1 --off"
alias only-hdmi="xrandr --output eDP-1-1 --off --output HDMI-1-1 --auto"
alias update-wallpapers="sudo systemctl restart wallpapers"
alias vectorise-notebooks="./OneDrive/ExamplePapers/process.sh"
alias start-vm='qemu-system-x86_64 -drive file=win_img,format=raw,cache=none,if=virtio -m 4G -net nic -net user,smb=/ -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time -smp 3 -enable-kvm'
alias start-rfx='/home/tim/scripts/rfx.sh'
#alias start-remote='ssh raspberryfry "wakeonlan -p 9 -i 192.168.1.255 d0:17:c2:d3:26:9d"'
#alias shutdown-remote='
#	echo -n "[sudo] password for tim: "
#        read -s passwd
#        echo
#        ssh tim-manjaro-desktop "if sudo -S <<< $passwd grub-reboot Halt; then; reboot; fi"
#'
alias remote-power='ssh raspberryfry "python3 remote-powerbutton/pressquick.py"'
alias remote-powerlong='ssh raspberryfry "python3 remote-powerbutton/presslong.py"'
alias start-remote='/home/tim/scripts/start-remote.sh'
alias mount-all='/home/tim/scripts/mount-all.sh'
alias unmount-all='/home/tim/scripts/unmount-all.sh'
alias umount-all='/home/tim/scripts/unmount-all.sh'
alias aur-remove='repo-remove /home/custompkgs/custom.db.tar'
alias nano=vim
alias duplicate-screen='xrandr --output eDP --auto --output $OUTPUT --mode 1920x1080 --same-as eDP --panning 1920x1080+0+0'
alias icat='kitty +kitten icat'
alias emerge='sudo strat -r gentoo emerge'

# I'm bad at typing
alias claer='clear'

alias muttp='neomutt -F ~/.config/neomutt/neomuttrc-personal'
alias muttc='neomutt -F ~/.config/neomutt/neomuttrc-cam'

alias ecfg='cd ~/.config; nvim .git/index'
alias vim='nvim'
