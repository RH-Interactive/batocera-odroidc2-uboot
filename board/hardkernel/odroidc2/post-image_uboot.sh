#!/bin/bash

mkdir -p "${BINARIES_DIR}/gamestation-odroidc2-uboot" || exit 1
cp "${BUILD_DIR}/uboot-odroidc2-v2015.01/sd_fuse/bl1.bin.hardkernel" "${BINARIES_DIR}/gamestation-odroidc2-uboot" || exit 1
cp "${BINARIES_DIR}/u-boot.bin" "${BINARIES_DIR}/gamestation-odroidc2-uboot"                                      || exit 1
(cd "${BINARIES_DIR}" && tar zcf gamestation-odroidc2-uboot.tar.gz gamestation-odroidc2-uboot)                       || exit 1
rm -rf "${BINARIES_DIR}/gamestation-odroidc2-uboot"                                                               || exit 1

exit 0
