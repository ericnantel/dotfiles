
#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

if [ "os" = 'GNU/Linux' ]; then
	# Make ${HOME}'/VDIs' directory
	mkdir -p ${HOME}'/VDIs'

	# Make ${HOME}'/ISOs/WinXP-LiveCD' directory
	mkdir -p ${HOME}'/ISOs/WinXP-LiveCD'

	# Make ${HOME}'/ISOs/FD13-LiveCD' directory
	mkdir -p ${HOME}'/ISOs/FD13-LiveCD'

	# Copy QEMU (WinXP) scripts
	cp qemu-scripts/create_winxp_img.sh ${HOME}'/ISOs/WinXP-LiveCD/create_winxp_img.sh'
	cp qemu-scripts/boot_winxp_iso.sh ${HOME}'/ISOs/WinXP-LiveCD/boot_winxp_iso.sh'
	cp qemu-scripts/run_winxp.sh ${HOME}'/ISOs/WinXP-LiveCD/run_winxp.sh'
	
	# Copy QEMU (FreeDOS) scripts
	cp qemu-scripts/create_freedos_img.sh ${HOME}'/ISOs/FD13-LiveCD/create_freedos_img.sh'
	cp qemu-scripts/boot_freedos_iso.sh ${HOME}'/ISOs/FD13-LiveCD/boot_freedos_iso.sh'
	cp qemu-scripts/run_freedos.sh ${HOME}'/ISOs/FD13-LiveCD/run_freedos.sh'

	# Make ${HOME}'/UVCs/Elgato CamLink' directory
	mkdir -p ${HOME}'/UVCs/Elgato CamLink'

	# Copy FFMPEG (Elgato CamLink) scripts
	cp ffmpeg-scripts/create_dummy_dev.sh ${HOME}'/UVCs/Elgato CamLink/create_dummy_dev.sh'
	cp ffmpeg-scripts/stream_elgato_to_dummy.sh ${HOME}'/UVCs/Elgato CamLink/stream_elgato_to_dummy.sh'
fi

