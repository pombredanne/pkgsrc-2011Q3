# $NetBSD: Makefile,v 1.5 2011/09/24 19:55:24 joerg Exp $
#

DISTNAME=		libcassandra-20101010
PKGREVISION=		2
CATEGORIES=		databases
MASTER_SITES=		ftp://ftp.ancient-solutions.com/pub/bsdprojects/NetBSD/packages/distfiles/

MAINTAINER=		tonnerre@NetBSD.org
HOMEPAGE=		http://github.com/posulliv/libcassandra/
LICENSE=		modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

COMMENT=		C++ interface to Cassandra

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		perl

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/libthrift/buildlink3.mk"
.include "../../lang/gcc44/buildlink3.mk"

.include "../../mk/bsd.prefs.mk"

pre-configure:
.include "../../lang/gcc44/preconfigure.mk"

CONFIGURE_ARGS+=	CPPFLAGS="-I${BUILDLINK_PREFIX.libthrift}/include/thrift -I${BUILDLINK_PREFIX.boost-headers}/include/boost"
MAKE_ENV+=		AM_DEFAULT_VERBOSITY=1

.include "../../mk/bsd.pkg.mk"
