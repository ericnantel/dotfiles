
#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

if [ "os" = 'Msys' ]; then
	# TODO: Default path for RK Profiles ?
elif [ "os" = 'Darwin' ] then
	# NOTE: Requires a restart. See screenshots to see how I set Ctrl, Alt
	cp keyboard-layouts/MacOS/Canadien_FR.keylayout "~/Library/Keyboard Layouts/Canadien_FR.keylayout"
fi
