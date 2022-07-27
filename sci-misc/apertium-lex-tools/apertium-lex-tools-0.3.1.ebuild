# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools
DESCRIPTION="Lexical selection utilities for apertium toolchain"
HOMEPAGE="http://apertium.sf.net/"
SRC_URI="https://github.com/apertium/${PN}/releases/download/v${PV}/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
#RESTRICT="strip"

COMMON_DEPEND=""
DEPEND="${COMMON_DEPEND}
	>=sci-misc/lttoolbox-3.5.0
	>=sci-misc/apertium-3.5.2
"
RDEPEND="${COMMON_DEPEND}"

#S=${WORKDIR}/${P}

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	local -x CPPFLAGS="${CPPFLAGS} -I${ESYSROOT}/usr/include/utf8cpp"
	default
}
