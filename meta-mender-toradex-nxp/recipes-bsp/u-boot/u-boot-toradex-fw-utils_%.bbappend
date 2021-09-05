FILESEXTRAPATHS_prepend_mender-uboot := "${THISDIR}/files:"

MENDER_UBOOT_AUTO_CONFIGURE_mender-uboot = "1"

require recipes-bsp/u-boot/u-boot-fw-utils-mender.inc

BOOTENV_SIZE_mender-uboot = "0x2000"

SRC_URI_append_mender-uboot = " \
    file://0001-configs-toradex-board-specific-mender-integration.patch \
"
