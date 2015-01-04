# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit autotools eutils
DESCRIPTION="Google's open source finite-state n-gram models"
HOMEPAGE="http://openfst.org/"
SRC_URI="http://openfst.cs.nyu.edu/twiki/pub/GRM/NGramDownload/${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

COMMON_DEPEND=">=sci-misc/openfst-1.4"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-automake-1.13.patch"
	sed -i -e "s:/usr/local/lib:/usr/$(get_libdir):" src/bin/Makefile.am \
		src/test/Makefile.am
	eautoreconf
}
