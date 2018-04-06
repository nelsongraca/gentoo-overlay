# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils pax-utils

DESCRIPTION="Packer is a tool for creating identical machine images for multiple platforms"
HOMEPAGE="http://www.packer.io"

BASE_URI="https://releases.hashicorp.com/packer/${PV}"
SRC_URI="
	x86?   	( ${BASE_URI}/${PN}_${PV}_linux_386.zip 	-> ${PN}_${PV}_linux_386.zip 	)
	amd64? 	( ${BASE_URI}/${PN}_${PV}_linux_amd64.zip 	-> ${PN}_${PV}_linux_amd64.zip 	)
	arm? 	( ${BASE_URI}/${PN}_${PV}_linux_arm.zip 	-> ${PN}_${PV}_linux_arm.zip 	)
	"
RESTRICT="bindist mirror strip"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 x86 arm"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

QA_PRESTRIPPED="opt/bin/${PN}"

S="${WORKDIR}"

src_install(){
	pax-mark m ${PN}
	insinto "/opt/bin"
	doins -r ${PN}
	dosym "/opt/bin/${PN}" "/usr/bin/${PN}"
	fperms +x "/opt/bin/${PN}"
}

pkg_postinst(){
	elog "Packer is successfully installed."
}
