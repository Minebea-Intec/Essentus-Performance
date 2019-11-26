all:
	mkdir -vp build
	tar -C build -xjf pr5900-toolchain.tar.bz2
	tar -C build -xjf pr5900-linux.tar.bz2
	tar -C build -xjf pr5900-uClibc.tar.bz2
	tar -C build -xjf pr5900-busybox.tar.bz2
	tar -C build -xjf pr5900-firmware-gpl.tar.bz2
	make -C build/pr5900-toolchain gpl-toolchain
	make -C build/pr5900-linux gpl-linux
	make -C build/pr5900-uClibc gpl-uClibc
	make -C build/pr5900-busybox gpl-busybox
	make -C build/pr5900-firmware-gpl gpl-firmware-gpl
