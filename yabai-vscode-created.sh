#! /usr/bin/zsh

is_vscode() {
    echo $(yabai -m query --spaces --space \
        | jq -re ".index" \
        | xargs -I{} yabai -m query --windows --space {} \
        | jq -r 'map(select(.id=='$YABAI_WINDOW_ID' and .app=="'$1'" and .subrole=="AXStandardWindow")) | .[] | [.app][]')
}

if [[ $(is_vscode "Code") == "Code" ]]; then
	yabai -m window --stack recent
fi
