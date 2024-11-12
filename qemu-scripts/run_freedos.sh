qemu-system-i386 \
	-hda ${HOME}'/VDIs/freedos.img' \
	-cdrom ${HOME}'/ISOs/FD13-LiveCD/FD13LIVE.iso' \ # TODO: Optional ?
	-m 16 -boot order=c \ # NOTE: Might be too low-mem for games
	-display sdl \
	-enable-kvm \
	-device sb16 \
	-device adlib
