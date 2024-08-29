# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# (based on libreoffice-voikko)

EAPI=8

DESCRIPTION="LO plugin for grammar-checking and correction with divvunspell"
HOMEPAGE="https://github.com/divvun/libreoffice-divvun"
EGIT_REPO_URI="https://github.com/divvun/libreoffice-divvun.git"

inherit git-r3

LICENSE="MPL-2.0"
SLOT="0"

DEPEND="|| (
		app-office/libreoffice[odk]
		>=app-office/libreoffice-bin-6.4.7.2_p1
)"
RDEPEND="${DEPEND}
	app-text/libdivvun[python]
"
BDEPEND="app-arch/zip"

src_compile() {
	emake oxt
}

src_install() {
	einstalldocs

	emake DESTDIR="${D}/usr/$(get_libdir)/${P}" install-unpacked

	insinto /usr/$(get_libdir)/libreoffice/share/extension/install/
	doins build/divvun.oxt
}

pkg_postinst() {
	# Register voikko with libreoffice
	COMPONENT="${ROOT}/usr/$(get_libdir)/libreoffice/share/extension/install/divvun.oxt"

	einfo "Trying to register ${COMPONENT} ..."
	unopkg add --shared "${COMPONENT}"
	if [[ ${?} == 0 ]] ; then
		einfo "${PN} registered succesfully with LibreOffice."
	else
		eerror "Couldn't register ${PN} with LibreOffice."
	fi
}

pkg_prerm() {
	# Remove voikko registration from libreoffice
	unopkg remove --shared org.puimula.ooovoikko
	if [[ ${?} == 0 ]] ; then
		einfo "${PN} removed succesfully from LibreOffice."
	else
		eerror "Couldn't remove ${PN} from LibreOffice, "
		eerror "manual removal might be needed with "
		eerror "  unopkg list --shared"
		eerror "  unopkg remove --shared divvun-IDENTIFIER"
	fi
}
