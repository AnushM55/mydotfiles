#!/usr/bin/env bash
#
if grep -q 'gaps bottom 25' ~/.config/i3/config; then
	sed -i -e 's/gaps bottom 25/gaps bottom 1/g' ~/.config/i3/config
	polybar-msg cmd toggle
	i3-msg reload
else
	sed -i -e 's/gaps bottom 1/gaps bottom 25/g' ~/.config/i3/config
	polybar-msg cmd toggle
	i3-msg reload
fi
