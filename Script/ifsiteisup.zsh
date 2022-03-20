#!/usr/bin/env zsh

curl -s --output /dev/null --connect-timeout 10 --max-time 15 "${1}"
if [[ $? -eq 0 ]]; then
	# is up
	echo $(curl -Ls -o /dev/null -w %{url_effective} "${1}")
fi
