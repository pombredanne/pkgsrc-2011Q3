# $NetBSD: Makefile,v 1.16 2011/04/22 13:43:32 obache Exp $

DISTNAME=	xmbdfed-4.5
PKGREVISION=	3
CATEGORIES=	fonts graphics x11
MASTER_SITES=	# ftp://crl.nmsu.edu/CLR/multiling/General/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://crl.nmsu.edu/~mleisher/xmbdfed.html
COMMENT=	Motif-based BDF font editor with lots of features

PKG_DESTDIR_SUPPORT=	user-destdir

USE_X11BASE=	YES

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmbdfed ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmbdfed.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/xmbdfed.1

.include "../../graphics/freetype-lib/buildlink3.mk"
.include "../../mk/motif.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
