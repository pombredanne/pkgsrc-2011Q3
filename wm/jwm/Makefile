# $NetBSD: Makefile,v 1.16 2011/01/13 13:53:31 wiz Exp $
#

DISTNAME=		jwm-2.0.1
PKGREVISION=		4
CATEGORIES=		wm x11
MASTER_SITES=		http://www.joewing.net/programs/jwm/releases/ \
			${MASTER_SITE_SOURCEFORGE:=jwm/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.joewing.net/programs/jwm/
COMMENT=		Lightweight window manager with virtual desktops

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes

.include "../../mk/bsd.prefs.mk"

.if exists(${X11BASE}/include/X11/extensions/Xinerama.h)
CONFIGURE_ARGS+=	--enable-xinerama
# XXX maybe set some build variable about that
.endif

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

SUBST_CLASSES+=		egdir
SUBST_STAGE.egdir=	pre-configure
SUBST_FILES.egdir=	Makefile.in
SUBST_SED.egdir=	-e 's,@@EGDIR@@,${EGDIR},g'

PKG_SYSCONFSUBDIR=	jwm
EGDIR=			${PREFIX}/share/examples/jwm
CONF_FILES=	${EGDIR}/system.jwmrc ${PKG_SYSCONFDIR}/system.jwmrc

INSTALLATION_DIRS=	bin

.include "options.mk"

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
