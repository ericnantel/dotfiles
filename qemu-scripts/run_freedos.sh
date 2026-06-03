qemu-system-i386 \
	-hda ${HOME}'/VDIs/freedos.img' \
	-hdb fat:rw:${HOME}'/Jeux/3DREALMS/DOSGAMES' \
	-cdrom ${HOME}'/ISOs/FD13-LiveCD/FD13LIVE.iso' \
	-m 16 -boot order=c \
	-rtc base=localtime \
	-display sdl \
	-device sb16 \
	-device adlib
