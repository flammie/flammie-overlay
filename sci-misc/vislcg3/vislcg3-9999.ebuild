# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Free parser and runner for Constraint Grammars"
HOMEPAGE="http://beta.visl.sdu.dk/"

if [ ${PV} = "9999" ]; then
	inherit git-r3
	EGIT_REPO_URI=https://github.com/TinoDidriksen/cg3.git
	SRC_URI=
else
	SRC_URI="https://github.com/TinoDidriksen/cg3/archive/v${PV}.tar.gz -> ${P}.tar.gz"
fi

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND=">=dev-libs/icu-50
	>=dev-libs/boost-1.53.0"
RDEPEND="${DEPEND}"
S="$WORKDIR/vislcg3-${PV}"
