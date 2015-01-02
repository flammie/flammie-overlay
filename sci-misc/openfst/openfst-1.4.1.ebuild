# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

#inherit eutils
DESCRIPTION="Google's open-source FST implementation"
HOMEPAGE="http://openfst.org/"
SRC_URI="http://openfst.org/twiki/pub/FST/FstDownload/${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

COMMON_DEPEND=""
# C++11
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_configure() {
	# required for opengrm-ngram
	econf --enable-far
}
