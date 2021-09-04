FILESEXTRAPATHS_prepend_mender-uboot := "${THISDIR}/files:"

SRC_URI_append_mender-uboot = " \
    file://0001-configs-toradex-board-specific-mender-integration.patch \
"
