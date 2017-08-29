# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit subversion

DESCRIPTION="Finnish dictionary for apertium"
HOMEPAGE="http://apertium.sf.net/"
ESVN_REPO_URI="svn://svn.code.sf.net/p/apertium/svn/languages/${PN}/"
ESVN_PROJECT="${PN}"
ESVN_BOOTSTRAP="autogen.sh"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND=">=sci-misc/apertium-3.3
>=sci-misc/lttoolbox-3.3
>=sci-misc/hfst-3.8"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

#S=${WORKDIR}/${P}
