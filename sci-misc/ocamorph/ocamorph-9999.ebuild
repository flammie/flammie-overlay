# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ECVS_AUTH="pserver"
ECVS_SERVER="cvs.mokk.bme.hu:/local/cvs"
ECVS_MODULE="${PN}"
ECVS_USER="anonymous"
ECVS_PASS="anonymous"
ECVS_CVS_OPTIONS="-d"

inherit cvs findlib

DESCRIPTION="Hungarian morphological analyser written in ocaml"
HOMEPAGE="http://mokk.bme.hu/resources/hunmorph/"

LICENSE="CC-BY-2.5"

SLOT="0"

KEYWORDS=""
IUSE=""

COMMON_DEPEND=
DEPEND="dev-lang/ocaml
dev-ml/findlib"
RDEPEND="${COMMON_DEPEND}"

S=${WORKDIR}/${PN}

src_prepare() {
	cd "${S}"/src/wrappers/ocamorph
	eapply "${FILESDIR}"/ocamorph-install-prefix.patch
	cd "${S}"/src/wrappers/ocastem
	eapply "${FILESDIR}"/ocastem-install-prefix.patch
}

src_compile() {
	# XXX: this might be some ocaml limitation?
	emake -j 1 || die "emake failed"
}

src_install() {
	findlib_src_install PREFIX="${D}/usr" INSTALLPREFIX="${D}"
}
