# $NetBSD: Makefile,v 1.5 2011/02/04 19:56:26 adam Exp $

DISTNAME=	libwpg-0.2.0
CATEGORIES=	converters graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libwpg/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://libwpg.sourceforge.net/
COMMENT=	Library for importing and converting Corel WordPerfect Graphics images
LICENSE=	gnu-lgpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		perl pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-docs
PKGCONFIG_OVERRIDE+=	libwpg-0.2.pc.in

REPLACE_PERL=		src/conv/svg/wpg2svgbatch.pl

.include "../../converters/libwpd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
