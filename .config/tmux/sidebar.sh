#!/usr/bin/env bash
# Workspace sidebar: left-anchored tmux menu of sessions > windows.
# Args (passed by tmux binding): client, current session, current session:window
client=$1 cur_s=$2 cur_w=$3

keys=(1 2 3 4 5 6 7 8 9 0 a c d e f g h i j l m o p r s t u v w y z)
items=()
i=0
while IFS= read -r s; do
  mark=" "; [[ $s == "$cur_s" ]] && mark="●"
  items+=("-#[bold]$mark $s" "" "")
  while IFS=$'\t' read -r idx name cmd; do
    label="    $idx: $name  #[dim]$cmd"
    [[ "$s:$idx" == "$cur_w" ]] && label="  ▶ $idx: $name  #[dim]$cmd"
    items+=("$label" "${keys[i]}" "switch-client -c '$client' -t '=$s:$idx'")
    ((i++))
  done < <(tmux list-windows -t "=$s" -F '#I	#W	#{pane_current_command}')
  items+=("")
done < <(tmux list-sessions -F '#S')

items+=("New session" "n" "command-prompt -p 'New session:' 'new-session -d -s \"%%\" ; switch-client -c \"$client\" -t \"=%%\"'")
items+=("Rename session" "R" "command-prompt -I '$cur_s' 'rename-session -t \"=$cur_s\" \"%%\"'")
items+=("Kill session" "X" "confirm-before -p 'Kill $cur_s? (y/n)' 'kill-session -t \"=$cur_s\"'")

tmux display-menu -c "$client" -T "#[align=centre] Workspaces " -x 0 -y 0 -- "${items[@]}"
