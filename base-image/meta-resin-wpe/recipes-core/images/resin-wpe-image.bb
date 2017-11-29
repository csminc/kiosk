include recipes-core/images/core-image-minimal.bb

IMAGE_FSTYPES = "tar.gz"

IMAGE_INSTALL_append += " \
	fbcp \
	fontconfig \
	fontconfig-utils \
	tslib-calibrate \
	tslib-tests \
	ttf-bitstream-vera \
	wpebackend \
	wpebackend-rdk \
	wpelauncher \
	wpewebkit \
	git \
	"

VIRTUAL-RUNTIME_init_manager="busybox"
