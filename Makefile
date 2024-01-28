all: help

help:
	echo "\n\nInfobox-PowerConf\nmake install for installation\nmake run to run infobox"

install:
	mv info.sh infobox-x
	gum confirm && mv infobox-x /opt/homebrew/bin || mv infobox-x info.sh 

run:
	/bin/bash  info.sh

