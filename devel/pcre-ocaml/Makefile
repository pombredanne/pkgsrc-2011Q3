# $NetBSD: Makefile,v 1.8 2010/01/30 19:16:09 joerg Exp $
#

DISTNAME=		pcre-ocaml-5.15.0
CATEGORIES=		devel
MASTER_SITES=		http://www.ocaml.info/ocaml_sources/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.ocaml.info/ocaml_sources/
COMMENT=		Perl compatible regular expressions for OCaml

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		ocaml-findlib-[0-9]*:../../devel/ocaml-findlib

.include "../../mk/bsd.prefs.mk"

USE_TOOLS+=		gmake pax
.if (${MACHINE_ARCH} == "i386") || (${MACHINE_ARCH} == "powerpc") || \
    (${MACHINE_ARCH} == "sparc") || (${MACHINE_ARCH} == "x86_64")
PLIST_SRC=		PLIST.opt PLIST
.else
BUILD_TARGET=		byte
.endif

EGDIR=			${PREFIX}/share/examples/pcre-ocaml
INSTALLATION_DIRS=	${EGDIR} lib/ocaml/site-lib/pcre

post-install:
	cd ${WRKSRC}/examples && pax -rw -pm . ${DESTDIR}${EGDIR}

.include "../../devel/pcre/buildlink3.mk"
.include "../../lang/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
