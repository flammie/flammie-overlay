# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3
EGIT_REPO_URI="https://github.com/apertium/apertium-separable"
DESCRIPTION="Apertium module for separable words"
HOMEPAGE="https://wiki.apertium.org/"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

COMMON_DEPEND=">=sci-misc/apertium-3.5.2
	>=sci-misc/lttoolbox-3.5"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_prepare() {
	./autogen.sh || die "autogen failed"
	default_src_prepare
}
