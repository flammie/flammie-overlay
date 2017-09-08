# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6

inherit cmake-utils

DESCRIPTION="Estimates, filters, and queries language models"
HOMEPAGE="https://kheafield.com/code/kenlm/"
SRC_URI="https://kheafield.com/code/kenlm.tar.gz"
LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

COMMON_DEPEND=""
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

S=${WORKDIR}/${PN}
