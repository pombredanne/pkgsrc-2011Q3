# $NetBSD: Makefile,v 1.16 2011/04/22 13:42:56 obache Exp $

DISTNAME=		moc-2.4.3
PKGREVISION=		3
CATEGORIES=		audio
MASTER_SITES=		ftp://ftp.daper.net/pub/soft/moc/stable/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		peter.schuller@infidyne.com
HOMEPAGE=		http://moc.daper.net/
COMMENT=		Curses based console audio player

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=		moc-devel-[0-9]*

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
USE_NCURSES=		yes
USE_TOOLS+=		pkg-config

# We require ncurses because with curses arrow key navigation is buggy
CONFIGURE_ARGS+=	--with-ncurses

SUBST_CLASSES+=		oss
SUBST_STAGE.oss=	pre-configure
SUBST_FILES.oss=	config.example options.c
SUBST_SED.oss=		-e s,/dev/dsp,${DEVOSSAUDIO},g
SUBST_MESSAGE.oss=	Fixing hardcoded audio device.

.include "options.mk"
###
### This target is [currently] for regenerating configure to add the 
### sched_get_priority_max check of librt.
###
#USE_TOOLS+=		autoconf automake
#pre-configure:
#	cd ${WRKSRC} && autoreconf -v -i

.include "../../audio/libid3tag/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
