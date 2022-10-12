#!/bin/bash

pyp=$(cat <<EOF
appr=type=str=help=Show appearance
show=action=store_true=help=Show show
name=choices=alp,arda,mehmet=type=str=nargs=2

EOF
)

args=$(printf "$pyp" | ./pygetopts "$@")
eval "$args" &> /dev/null || (echo "$args" && exit)

[[ ! -z $appr ]] && echo "$appr"
[[ ! -z $show ]] && echo "$show"
[[ ! -z $name ]] && echo "$name"
#echo "$calcf"
