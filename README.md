# Dot Files
Dot files and config for Arch Linux

## OS
Arch Linux

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
- Vim/Nvim
- rofi
- wofi
- bash (aliases in .config/shell/aliasrc)
- terminator
- spacemacs
- tmux

## Custom scripts
- Powermenu (~/.local/bin/powermenu)
Custom powermenu that provides power options using wofi by default.\
Other menu options are dmenu, rofi, and wmenu. Bind it to your keybinding in your respective window manager's config file (set to mod+Shift+d by default).

```bash
bindsym $mod+Shift+d exec powermenu
#bindsym $mod+Shift+d exec powermenu rofi # uses rofi
```

## Usage
1. Clone the repo.
1. Install scripts/arch-postinstall.sh by running bash arch-postinstall.sh. You will need sudo privileges.
1. Copy the config files to your home directory. This will replace your existing settings.
