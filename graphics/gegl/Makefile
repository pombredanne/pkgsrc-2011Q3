# $NetBSD: Makefile,v 1.22 2011/09/14 16:54:31 hans Exp $

DISTNAME=	gegl-0.1.6
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.gimp.org/pub/gegl/0.1/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://gegl.org/
COMMENT=	Graph based image processing framework
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-docs
CONFIGURE_ENV+=		ac_cv_path_ASCIIDOC=no
CONFIGURE_ENV+=		ac_cv_path_ENSCRIPT=no
CONFIGURE_ENV+=		ac_cv_path_SDL_CONFIG=no
CONFIGURE_ENV+=		ac_cv_prog_RUBY=no

PKGCONFIG_OVERRIDE+=	gegl.pc.in

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=	v4l

.if ${OPSYS} == "Linux" && exists(/usr/include/linux/videodev.h)
PLIST.v4l=	yes
.endif

CFLAGS.SunOS+=		-std=c99 -D_XOPEN_SOURCE=600
CXXFLAGS.SunOS+=	--std=c99

.include "options.mk"

BUILDLINK_API_DEPENDS.babl+=	babl>=0.1.4
.include "../../graphics/babl/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/jasper/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
