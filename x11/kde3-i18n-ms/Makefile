# $NetBSD: Makefile,v 1.29 2011/04/22 13:45:09 obache Exp $

DISTNAME=	kde-i18n-ms-${_KDE_VERSION}
PKGREVISION=	7
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_KDE_I18N}

COMMENT=	Language bindings for the KDE desktop

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/kde3/Makefile.kde3"

USE_TOOLS+=	msgfmt
BUILDLINK_DEPMETHOD.qt3-libs=	build
BUILDLINK_DEPMETHOD.kdelibs=	build

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
