# $NetBSD: Makefile,v 1.61 2011/08/29 14:49:15 wiz Exp $
#

DISTNAME=	mercurial-1.9.2
CATEGORIES=	devel scm
MASTER_SITES=	http://mercurial.selenic.com/release/

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://mercurial.selenic.com/wiki/
COMMENT=	Fast, lightweight source control management system
LICENSE=	gnu-gpl-v2 OR gnu-gpl-v3 # OR newer

BUILD_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto
BUILD_DEPENDS+=	asciidoc-[0-9]*:../../textproc/asciidoc

PKG_DESTDIR_SUPPORT=	user-destdir

PY_PATCHPLIST=			yes
PYDISTUTILSPKG=			yes
USE_TOOLS+=			gmake msgfmt

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5
INSTALLATION_DIRS+=	share/doc/mercurial

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.1  ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/doc/*.5  ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_DATA} ${WRKSRC}/README  \
		${DESTDIR}${PREFIX}/share/doc/mercurial

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Linux" && empty(OS_VERSION:M2.4.*) && empty(OS_VERSION:M2.2.*)
PLIST_SRC+=	${.CURDIR}/PLIST ${.CURDIR}/PLIST.inotify
.endif

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
