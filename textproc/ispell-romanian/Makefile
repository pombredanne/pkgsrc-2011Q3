# $NetBSD: Makefile,v 1.6 2009/08/20 15:25:00 jwise Exp $
#

DISTNAME=	rom-spell
PKGNAME=	ispell-romanian-20031216
CATEGORIES=	textproc
MASTER_SITES=	http://www.cs.cmu.edu/~mihaib/ftp/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://fmg-www.cs.ucla.edu/fmg-members/geoff/ispell-dictionaries.html#Romanian-dicts
COMMENT=	Romanian dictionary for ispell

DEPENDS+=	ispell-base>=3.1.20:../../textproc/ispell-base

DIST_SUBDIR=	${PKGNAME_NOREV}

INSTALLATION_DIRS=	lib
PKG_DESTDIR_SUPPORT=	user-destdir

do-install:
	${INSTALL_DATA} ${WRKSRC}/rom.aff ${DESTDIR}${PREFIX}/lib/romanian.aff
	${INSTALL_DATA} ${WRKSRC}/rom.hash ${DESTDIR}${PREFIX}/lib/romanian.hash
	${INSTALL_DATA} ${WRKSRC}/rom.signs.aff ${DESTDIR}${PREFIX}/lib/romanian-signs.aff
	${INSTALL_DATA} ${WRKSRC}/rom.signs.hash ${DESTDIR}${PREFIX}/lib/romanian-signs.hash

.include "../../mk/bsd.pkg.mk"
