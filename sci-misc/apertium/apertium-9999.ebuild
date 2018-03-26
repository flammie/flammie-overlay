# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3
EGIT_REPO_URI="https://github.com/apertium/${PN}"
DESCRIPTION="Shallow-transfer machine Translation engine and toolbox"
HOMEPAGE="http://apertium.sourceforge.net/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS=""

RDEPEND="
	dev-libs/libxslt
	dev-libs/libpcre[cxx]
	>=sci-misc/lttoolbox-3.3
	virtual/libiconv"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	./autogen.sh || die "autogen failed"
	econf
}
