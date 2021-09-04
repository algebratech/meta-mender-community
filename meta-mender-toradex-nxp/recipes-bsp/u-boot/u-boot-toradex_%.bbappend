FILESEXTRAPATHS_prepend_mender-uboot := "${THISDIR}/files:"

require recipes-bsp/u-boot/u-boot-mender.inc

MENDER_UBOOT_AUTO_CONFIGURE_mender-uboot = "0"
BOOTENV_SIZE_mender-uboot = "0x2000"

RPROVIDES_${PN} += "u-boot"

# Apply custom patches for Toradex u-boot
SRC_URI_append_mender-uboot = " \
    file://0001-configs-toradex-board-specific-mender-integration.patch \
"

