# Copyright 1999-2022 Gentoo Authors

EAPI=7
PYTHON_COMPAT=( python3_10 python3_11 python3_12 )
inherit autotools python-r1

DESCRIPTION="Language technology tool library from Divvun"
HOMEPAGE="https://github.com/divvun/libdivvun/"
SRC_URI="https://github.com/divvun/libdivvun/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="~amd64"

IUSE="python"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

COMMON_DEPEND="dev-libs/pugixml
	sci-misc/hfst
	sci-misc/vislcg3
	app-arch/libarchive
	python? ( dev-lang/swig ) "
RDEPEND="${PYTHON_DEPS}
	${COMMON_DEPEND}"
DEPEND="${COMMON_DEPEND}"

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	econf $(use_enable python python-bindings)
}
