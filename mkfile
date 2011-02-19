generate:
	galgen . ../art_thou.out
transfer:
	rsync --progress -ruz ../art_thou.out/ bitcheese.net:art_thou/
deploy: generate transfer
	echo "Deployed"
