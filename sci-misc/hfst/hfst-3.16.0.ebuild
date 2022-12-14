# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_OPTIONAL=1
PYTHON_COMPAT=( python3_{8,9,10} )
inherit distutils-r1  autotools

DESCRIPTION="Helsinki Finite-State Technology libraries and tools"
HOMEPAGE="http://hfst.sf.net/"
SRC_URI="https://github.com/hfst/hfst/releases/download/v${PV}/${P}.tar.bz2"
LICENSE="GPL-2 GPL-3 Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="minimal python"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

COMMON_DEPEND="python? ( ${PYTHON_DEPS} )"
DEPEND=">=sys-devel/flex-2.5.35
>=sys-devel/bison-2.4
${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	econf $(use_enable !minimal all-tools )
}

src_compile() {
	default_src_compile
	if use python ; then
		cd "${S}/python"
		python_foreach_impl esetup.py build_ext --inplace --local-hfst
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
