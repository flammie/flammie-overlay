# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

#inherit eutils
DESCRIPTION="Google's open-source FST implementation"
HOMEPAGE="https://openfst.org/"
SRC_URI="https://openfst.org/twiki/pub/FST/FstDownload/${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND=""
# C++11
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

src_prepare() {
	eapply_user
	# this is also from ubuntu:
	sed -i -e 's/c++11/c++17/' configure.ac || die "couldn't fix c++ std"
	eautoreconf
}

src_configure() {
	# match with ubuntu / devian
	econf --enable-bin --enable-compact-fsts --enable-compress \
		--enable-const-fsts --enable-far --enable-fsts --enable-grm \
		--enable-linear-fsts --enable-lookahead-fsts --enable-mpdt \
		--enable-ngram-fsts --enable-pdt --enable-special
}
