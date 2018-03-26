# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit autotools
DESCRIPTION="Shallow-transfer machine Translation engine and toolbox"
HOMEPAGE="http://apertium.sourceforge.net/"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/libxslt
	dev-libs/libpcre[cxx]
	>=sci-misc/lttoolbox-3.3
	virtual/libiconv"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	dev-vcs/subversion"

src_prepare() {
	eapply_user
	eautoreconf
}
