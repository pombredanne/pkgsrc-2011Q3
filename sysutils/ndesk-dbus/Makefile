# $NetBSD: Makefile,v 1.8 2011/06/10 09:40:01 obache Exp $

DISTNAME=	ndesk-dbus-0.6.1a
PKGREVISION=	5
CATEGORIES=	sysutils
MASTER_SITES=	http://www.ndesk.org/archive/ndesk-dbus/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.ndesk.org/DBusSharp
COMMENT=	C\# implementation of dbus

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake

CONFLICTS+=	dbus-sharp-[0-9]*
DEPENDS+=	dbus>=1.0:../../sysutils/dbus

PKGCONFIG_OVERRIDE+=	ndesk-dbus-1.0.pc.in

.include "../../lang/mono/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
