# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Helsinki Finite-State Technology libraries and tools"
HOMEPAGE="http://hfst.sf.net/"
SRC_URI="mirror://sourceforge/${PN}/source/${P}.tar.gz"
LICENSE="GPL-2 GPL-3 Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="bindist minimal"

DEPEND=">=sys-devel/flex-2.5.35
>=sys-devel/bison-2.4
"
RDEPEND=""

src_configure() {
	econf $(use_enable !minimal all-tools ) \
		$(use_with !bindist foma )
}
