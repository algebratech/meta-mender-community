FILESEXTRAPATHS_prepend_mender-uboot := "${THISDIR}/files:"

require recipes-bsp/u-boot/u-boot-fw-utils-mender.inc

SRC_URI_append_mender-uboot = " \
    file://0001-configs-toradex-board-specific-mender-integration.patch \
"

do_install_append_mender-uboot() {
    # Remove the stock fw_env.config.  Use the one from mender
    rm -f ${D}${sysconfdir}/fw_env.config
    ln -s /data/u-boot/fw_env.config ${D}${sysconfdir}/
}
