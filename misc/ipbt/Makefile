# $NetBSD: Makefile,v 1.4 2010/01/02 00:20:14 dholland Exp $
#

DISTNAME=	ipbt-r8765
PKGNAME=	ipbt-8765
CATEGORIES=	misc
# The upstream distfile is apparently rebuilt every night with
# newly regenerated docs that have different timestamps. Use the
# copy cached on ftp.NetBSD.org so the checksum works.
MASTER_SITES=	${MASTER_SITE_LOCAL}
DIST_SUBDIR=	ipbt-20100101
#MASTER_SITES=	http://www.chiark.greenend.org.uk/~sgtatham/ipbt/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.chiark.greenend.org.uk/~sgtatham/ipbt/
COMMENT=	High-tech ttyrec player

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		perl
REPLACE_PERL=		ttydump ttygrep
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

BUILD_TARGET=		ipbt

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
# NetBSD's curses do not work
USE_BUILTIN.ncursesw=	no
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipbt ${DESTDIR}${PREFIX}/bin/ipbt
	${INSTALL_MAN} ${WRKSRC}/ipbt.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/ipbt.1
	${INSTALL_SCRIPT} ${WRKSRC}/ttydump ${DESTDIR}${PREFIX}/bin/ttydump
	${INSTALL_SCRIPT} ${WRKSRC}/ttygrep ${DESTDIR}${PREFIX}/bin/ttygrep

.include "../../devel/ncursesw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
