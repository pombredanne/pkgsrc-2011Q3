# $NetBSD: Makefile,v 1.30 2011/04/22 13:43:24 obache Exp $
#

DISTNAME=	yasm-1.1.0
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.tortall.net/projects/yasm/releases/

MAINTAINER=	shaun@inerd.com
HOMEPAGE=	http://www.tortall.net/projects/yasm/
COMMENT=	Complete rewrite of the NASM assembler with BSD license
LICENSE=	modified-bsd AND (artistic OR gnu-gpl-v2 OR gnu-lgpl-v2)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		msgfmt
GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
TEST_TARGET=		check

SUBST_CLASSES+=		link
SUBST_STAGE.link=	pre-configure
SUBST_MESSAGE.link=	Fix linking command.
SUBST_FILES.link=	Makefile.in
SUBST_SED.link=		-e 's,$$(CCLD_FOR_BUILD) -o $$@,$$(LINK) -o $$@,'

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
