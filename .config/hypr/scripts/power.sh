#!/usr/bin/env bash
# --- Config ---------------------------------------------------------------

declare -A options=(
  ["Shutdown"]="shutdown"
  ["Reboot"]="reboot"
  ["Logout"]="logout"
  ["Lock"]="lock"
  ["Suspend"]="suspend"
  ["Hibernate"]="hibernate"
)

# Order matters for dmenu list -> preserve insertion order
menu_order=(
  "Shutdown"
  "Reboot"
  "Logout"
  "Lock"
  "Suspend"
  "Hibernate"
)

run_action() {
  case "$1" in
  shutdown)
    systemctl poweroff
    ;;
  reboot)
    systemctl reboot
    ;;
  logout)
    command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'
    ;;
  lock)
    hyprlock
    ;;
  suspend)
    systemctl suspend
    ;;
  hibernate)
    systemctl hibernate
    ;;
  esac
}

# --- Main --------------------------------------------------------------

# Build the menu string from the ordered list
menu=$(printf "%s\n" "${menu_order[@]}")

chosen=$(printf "%s" "$menu" | fuzzel --dmenu --hide-prompt --minimal-lines)

# Exit cleanly if nothing selected (e.g. user pressed Esc)
[[ -z "$chosen" ]] && exit 0

action="${options[$chosen]}"

[[ -n "$action" ]] && run_action "$action"
