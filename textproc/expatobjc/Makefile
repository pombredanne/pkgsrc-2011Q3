# $NetBSD: Makefile,v 1.14 2009/05/19 08:59:35 wiz Exp $
#

DISTNAME=		expatobjc-1.0
PKGREVISION=		5
CATEGORIES=		textproc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=expatobjc/}

MAINTAINER=		rh@NetBSD.org
HOMEPAGE=		http://expatobjc.sourceforge.net/
COMMENT=		Objective-C Wrapper for Expat
LICENSE=		expatobjc-license

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		objc
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
AUTO_MKDIRS=		yes

CONFIGURE_ENV+=		objc_works=yes
MAKE_ENV+=		INSTALL_DATA=${INSTALL_DATA:Q}

SUBST_CLASSES+=		expatobjc
SUBST_STAGE.expatobjc=	pre-configure
SUBST_FILES.expatobjc=	Makefile.in
SUBST_SED.expatobjc+=	-e 's|\$$(INSTALL) -c -m 644|\$${INSTALL_DATA}|'
SUBST_SED.expatobjc+=	-e 's|\$$(libdir)|\$${DESTDIR}\$${PREFIX}/lib|'
SUBST_SED.expatobjc+=	-e 's|\$$(incdir)|\$${DESTDIR}\$${PREFIX}/include|'

.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
