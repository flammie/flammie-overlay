# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools eutils
DESCRIPTION="Google's open source finite-state n-gram models"
HOMEPAGE="http://openfst.org/"
SRC_URI="http://www.opengrm.org/twiki/pub/GRM/NGramDownload/opengrm-ngram-1.2.1.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND=">=sci-misc/openfst-1.4"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_prepare() {
	eapply "${FILESDIR}/${PN}-automake-1.13.patch"
	sed -i -e "s:/usr/local/lib:/usr/$(get_libdir):" src/bin/Makefile.am \
		src/test/Makefile.am
	eautoreconf
	eapply_user
}
