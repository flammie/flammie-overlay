# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="Compiler for linguistic lexicons"
HOMEPAGE="http://apertium.sourceforge.net"
SRC_URI="https://github.com/apertium/lexd/releases/download/v${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="dev-libs/icu
	>=sci-misc/lttoolbox-3.7.1
	dev-libs/utfcpp"
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
