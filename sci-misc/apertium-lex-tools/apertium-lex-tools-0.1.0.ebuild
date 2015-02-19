# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit autotools
DESCRIPTION="Lexical selection utilities for apertium toolchain"
HOMEPAGE="http://apertium.sf.net/"
SRC_URI="mirror://sourceforge/apertium/${PN}/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
#RESTRICT="strip"

COMMON_DEPEND=""
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

#S=${WORKDIR}/${P}

src_prepare() {
	sed -i -e 's/lttoolbox-3.2/lttoolbox/' \
		-e 's/apertium-3.2/apertium/' configure.ac || die "sed failed"
	eautoreconf
}
