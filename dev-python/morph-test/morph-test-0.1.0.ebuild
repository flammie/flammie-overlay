# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{12..13} )

EGIT_REPO_URI="https://github.com/divvun/morph-test"
EGIT_COMMIT="e9c903cb73b11275e1aeac409d141d0137d4d1f8"
inherit distutils-r1 git-r3

DESCRIPTION="test util for finite state morphologies"
HOMEPAGE="https://github.com/divvun/morph-test"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-python/pyyaml"
BDEPEND="dev-python/poetry"

