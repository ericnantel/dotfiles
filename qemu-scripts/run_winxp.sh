qemu-system-i386 \
	-drive file=${HOME}'/VDIs/winxp.img' \
	-cdrom /dev/cdrom \
	-M pc,accel=kvm -cpu qemu32 -m 1024 \
	-display sdl \
	-audio driver=sdl,model=ac97 \
	-device VGA,vgamem_mb=64 \
	# -net nic,model=rtl8139 \
	-boot c
