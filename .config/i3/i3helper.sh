#!/usr/bin/env bash

get_workspace_list () {
    i3-msg -t get_workspaces \
        | jq '.[] | select(.num != -1 ) | .num' \
        | sort --numeric-sort
}

rename_workspaces () {
    ((i=1))
    while IFS=$'\n' read -r workspace; do
	printf "renaming workspace '%s' to '%s'\\n" "$workspace" "$i" 
	i3-msg rename workspace "$workspace" to "$i"  
	((i++))
    done < <(get_workspace_list)
}

get_workspace () {
    i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2
}

bound () {
    if (( $1 > 9 )); then
	echo 1
    fi
    if (( $1 < 1 )); then
	echo 9
    fi
    echo $1
}

change () {
    i3-msg workspace $1
}

move () {
    i3-msg move container to workspace $1 
}

result=$( bound $(( $(get_workspace) + $2 )) )
echo "Result: $result"

if [ "$1" = "move" ]; then
    move $result
fi
if [ "$1" = "change" ]; then
    change $result
fi
if [ "$1" = "follow" ]; then
    move $result; change $result
fi
if [ "$1" = "rename" ]; then
    rename_workspaces
fi
