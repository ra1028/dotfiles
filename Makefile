install: homebrew symlink env karabiner xcode atom

homebrew:
	sh brewSetup.sh

symlink:
	sh symLink.sh

env:
	sh envLink.sh

karabiner:
	sh karabinerSetup.sh

xcode:
	sh XcodeLink.sh

atom:
	sh atomSync.sh
