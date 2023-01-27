# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Speech analysis and synthesis"
HOMEPAGE="http://praat.org/"
SRC_URI="https://github.com/praat/praat/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

COMMON_DEPEND="x11-libs/gtk+:3
app-accessibility/at-spi2-core
dev-libs/glib
media-libs/fontconfig
media-libs/freetype
media-libs/opusfile
x11-libs/cairo
x11-libs/gdk-pixbuf
x11-libs/pango
"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}
media-fonts/sil-charis
media-fonts/sil-doulos"

src_prepare() {
	eapply_user
	# TODO: following line should be updated for non-linux etc. builds
	# (Flammie does not have testing equipment)
	cp "${S}/makefiles/makefile.defs.linux.pulse" "${S}/makefile.defs"
	# FIXME: commented out upstream??
	sed -i -e 's/$(LIBS)/external/opusfile/libopusfile.a \0/' Makefile
}

src_install() {
	dobin praat
	insinto /usr/share/${PN}/test
	doins test/*
}
