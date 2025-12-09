DESCRIPTION = "Yocto Block Driver Build"
LICENSE = "GPL-2.0"

SRC_URI = "file://Makefile \
           file://myblock.c \
           file://block_test.c"

S = "${WORKDIR}"

do_compile() {
    make -C ${S}
}
