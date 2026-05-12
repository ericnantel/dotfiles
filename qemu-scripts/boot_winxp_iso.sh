qemu-system-i386 \
	-drive file=${HOME}/VDIs/winxp.img \
	-cdrom ${HOME}/ISOs/WinXP-LiveCD/WINXP_PRO_SP3_X86_CD_FR.iso \
	-m 512 -boot d \
	-vga cirrus -net nic,model=rtl8139 -enable-kvm # TODO: Verify
