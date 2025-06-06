# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="A control daemon, CLI tools, and a collection of crates for interacting with ASUS ROG laptops"
HOMEPAGE="https://gitlab.com/asus-linux/asusctl"

EGIT_REPO_URI="https://gitlab.com/asus-linux/asusctl.git"
EGIT_COMMIT="${PV}"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="network-sandbox"
IUSE=""

DEPEND="
	dev-libs/libayatana-appindicator
	sys-auth/seatd
	>=dev-lang/rust-1.75
"
RDEPEND="${DEPEND}"
BDEPEND=""


src_install() {
	default
	newinitd "${FILESDIR}"/asusd-v2.initd asusd
}

