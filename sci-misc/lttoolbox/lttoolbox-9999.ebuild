# Copyright 1999-2022 Gentoo Contributors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3
EGIT_REPO_URI="https://github.com/apertium/${PN}"
DESCRIPTION="Toolbox for lexical processing, morphological analysis and generation of words"
HOMEPAGE="http://apertium.sourceforge.net"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="static-libs"

RDEPEND="dev-libs/libxml2:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	./autogen.sh || die "autogen failed"
	econf $(use_enable static-libs static)
}
