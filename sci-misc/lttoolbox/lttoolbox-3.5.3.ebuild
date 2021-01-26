# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit autotools

DESCRIPTION="Toolbox for lexical processing, morphological analysis and generation of words"
HOMEPAGE="http://apertium.sourceforge.net"
SRC_URI="https://github.com/apertium/lttoolbox/releases/download/v${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-libs/libxml2:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	eapply_user
	eautoreconf
}
