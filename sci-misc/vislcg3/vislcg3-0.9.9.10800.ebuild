# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit cmake-utils

MY_PN=cg3
MY_PV=0.9.9~r10800
MY_P=${MY_PN}-${MY_PV}

DESCRIPTION="Free parser and runner for Constraint Grammars"
HOMEPAGE="http://beta.visl.sdu.dk/"
SRC_URI="http://beta.visl.sdu.dk/download/${PN}/${MY_P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE=""

DEPEND="dev-libs/icu
	dev-libs/boost"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_PN}
