# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_10 )
inherit autotools python-single-r1

DESCRIPTION="Apertium tool for regression testing dictionaries"
HOMEPAGE="https://apertium.github.io"
SRC_URI="https://github.com/apertium/apertium-regtest/releases/download/v${PV}/${P}.tar.bz2"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="${PYTHON_DEPS}"
RDEPEND="${COMMON_DEPEND}"
DEPEND="${COMMON_DEPEND}
	virtual/pkgconfig"

src_prepare() {
	eapply_user
	eautoreconf
}
