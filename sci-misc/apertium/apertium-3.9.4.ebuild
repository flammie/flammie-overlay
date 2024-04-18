# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools
DESCRIPTION="Shallow-transfer machine Translation engine and toolbox"
HOMEPAGE="http://apertium.sourceforge.net/"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/v${PV}/${P}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

COMMON_DEPEND="dev-libs/utfcpp
	dev-libs/libxslt
	dev-libs/libpcre[cxx]
	>=sci-misc/lttoolbox-3.7.2
	virtual/libiconv"
RDEPEND="${COMMON_DEPEND}"
DEPEND="${COMMON_DEPEND}
	virtual/pkgconfig"

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	local -x CPPFLAGS="${CPPFLAGS} -I${ESYSROOT}/usr/include/utf8cpp"
	default
}
