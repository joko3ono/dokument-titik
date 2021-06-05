set -x XDG_CONFIG_HOME '/home/joko/.config'
source $HOME/.env.conf
source $XDG_CONFIG_HOME/fish/env.fish
source $XDG_CONFIG_HOME/fish/alias.fish

for cmd in mount umount eject pacman zypper su systemctl fdisk gdisk btrfs timeshift timeshift-launcher btrfs-du
  alias $cmd="sudo $cmd"
end

# status --is-interactive; and . (rbenv init -|psub)

if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    # exec startx -- -keeptty
  end
end
