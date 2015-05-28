# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit cmake-utils subversion

DESCRIPTION="Free parser and runner for Constraint Grammars"
HOMEPAGE="http://beta.visl.sdu.dk/"
ESVN_REPO_URI="http://beta.visl.sdu.dk/svn/visl/tools/vislcg3/trunk/@10730"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND="dev-libs/icu
	dev-libs/boost"
RDEPEND="${DEPEND}"
