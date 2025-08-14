# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{12..13} )

EGIT_REPO_URI="https://github.com/divvun/giellaltlextools"
EGIT_COMMIT="af81ab7ff8fcdafca432fe6ea64ca3a87c5c32e7"
inherit distutils-r1 git-r3

DESCRIPTION="lexicon tools for giellalt repositories"
HOMEPAGE="https://github.com/divvun/morph-test"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-python/cython"
BDEPEND="dev-python/poetry"
