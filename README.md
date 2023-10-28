# Dot Files
Dot files and config for Arch Linux

## OS
1. Arch Linux
2. Debian 12

## Window manager
Switch between the following window managers in .config/shell/profile.

- Sway
  - Lock screen utility: swaylock
  - Notification handler: swaync
  - Bar: waybar
- i3
  - Lock screen utility: i3lock
  - Bar: i3status

## Settings for:
- bash (aliases in .config/shell/aliasrc)
- Doom Emacs
- rofi
- spacemacs
- sway
- terminator
- tmux
- waybar
- wofi
- Vim/Nvim

## Custom scripts
- Powermenu (~/.local/bin/powermenu)\
Custom powermenu that provides power options using wofi by default.\
Other menu options are dmenu, rofi, and wmenu. Bind it to your keybinding in your respective window manager's config file (set to mod+Shift+d by default).

```bash
bindsym $mod+Shift+d exec powermenu
#bindsym $mod+Shift+d exec powermenu rofi # uses rofi
```

## Usage
### Arch Linux
1. Clone the repo.
2. Install scripts/arch-postinstall.sh by running bash arch-postinstall.sh. You will need sudo privileges.

### Debian 12
1. Clone the repo.
2. Run scripts/setup.sh. You will need sudo privileges.

