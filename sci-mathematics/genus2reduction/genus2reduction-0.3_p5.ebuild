# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit toolchain-funcs sage versionator

DESCRIPTION="Conductor and Reduction Types for Genus 2 Curves"
HOMEPAGE="http://www.math.u-bordeaux.fr/~liu/G2R/"
MY_P=${PN}-$(replace_version_separator 2 '.')
SRC_URI="${SPKG_URI}/${MY_P}.spkg -> ${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
RESTRICT="mirror"
KEYWORDS="~amd64 ~ppc ~x86 ~ppc64"
IUSE=""

RDEPEND=">=sci-mathematics/pari-2.3.3[gmp]"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}/src"

src_prepare() {
	epatch "$FILESDIR/${PN}-0.3.p2.patch"
}

src_compile() {
	$(tc-getCC ) ${CFLAGS} -o ${PN} ${PN}.c -lpari -lgmp -lm || die "Compile failed!"
}

src_install() {
	dobin ${PN} || die "installation failed!"
	dodoc README RELEASE.NOTES WARNING
}