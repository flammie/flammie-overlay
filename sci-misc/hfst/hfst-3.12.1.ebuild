# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
DISTUTILS_OPTIONAL=1
PYTHON_COMPAT=( python{2_7,3_4} )
inherit distutils-r1

DESCRIPTION="Helsinki Finite-State Technology libraries and tools"
HOMEPAGE="http://hfst.sf.net/"
SRC_URI="https://github.com/hfst/hfst/releases/download/v${PV}/${P}.tar.gz"
LICENSE="GPL-2 GPL-3 Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="minimal python"

COMMON_DEPEND="python? ( ${PYTHON_DEPS} )"
DEPEND=">=sys-devel/flex-2.5.35
>=sys-devel/bison-2.4
${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_configure() {
	econf $(use_enable !minimal all-tools )
}

src_compile() {
	default_src_compile
	if use python ; then
		cd "${S}/python"
		distutils-r1_src_compile
	fi
}

src_install() {
	default_src_install
	if use python ; then
		cd "${S}/python"
		distutils-r1_src_install
	fi
}
