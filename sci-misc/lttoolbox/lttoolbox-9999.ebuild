# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit subversion
ESVN_REPO_URI="http://svn.code.sf.net/p/apertium/svn/trunk/${PN}"
ESVN_PROJECT="${PN}"
DESCRIPTION="Toolbox for lexical processing, morphological analysis and generation of words"
HOMEPAGE="http://apertium.sourceforge.net"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

RDEPEND="dev-libs/libxml2:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	./autogen.sh || die "autogen failed"
	econf $(use_enable static-libs static)
}
