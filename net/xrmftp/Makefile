# $NetBSD: Makefile,v 1.19 2010/12/23 11:44:53 dsainty Exp $

DISTNAME=	xrmftp-1.2.4
PKGREVISION=	6
CATEGORIES=	net
MASTER_SITES=	http://www-users.mat.uni.torun.pl/~rafmet/xrmftp/
EXTRACT_SUFX=	.src.tgz

MAINTAINER=	rxg@NetBSD.org
HOMEPAGE=	http://www-users.mat.uni.torun.pl/~rafmet/xrmftp/
COMMENT=	FTP client for X Window System

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME}.src
USE_X11BASE=	yes

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xrmftp ${DESTDIR}${PREFIX}/bin

.include "../../mk/jpeg.buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/xforms/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
