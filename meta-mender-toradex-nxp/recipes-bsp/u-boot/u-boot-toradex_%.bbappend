FILESEXTRAPATHS_prepend_mender-uboot := "${THISDIR}/files:"

require recipes-bsp/u-boot/u-boot-mender.inc

MENDER_UBOOT_AUTO_CONFIGURE_mender-uboot = "0"
BOOTENV_SIZE_mender-uboot = "0x2000"

RPROVIDES_${PN} += "u-boot"

# Apply custom patches for Toradex u-boot
SRC_URI_append_mender-uboot = " \
    file://0001-configs-toradex-board-specific-mender-integration.patch \
    file://0002-fw_env_main.c-Fix-incorrect-size-for-malloc-ed-strin.patch \
    file://0003-Ext4-extent-cache.patch \
"

