# $NetBSD: Makefile,v 1.10 2011/10/02 22:16:48 dholland Exp $
#

VERSION=		0.6.1
DISTNAME=		boa-constructor-${VERSION}.src
PKGNAME=		boa-constructor-${VERSION}
PKGREVISION=		7
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=boa-constructor/}
EXTRACT_SUFX=		.zip

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://boa-constructor.sourceforge.net/
COMMENT=		Python IDE

DEPENDS+=		${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

PKG_DESTDIR_SUPPORT=	user-destdir
PREV_PKGPATH=		devel/boaconstructor

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
BOADIR=			${PREFIX}/share/boa-constructor-${VERSION}
INSTALLATION_DIRS+=	${BOADIR}

SEDSUBSTS=	-e "s|@PYTHONBIN@|${PYTHONBIN}|"
SEDSUBSTS+=	-e "s|@PREFIX@|${PREFIX}|"
SEDSUBSTS+=	-e "s|@VERSION@|${VERSION}|"

REPLACE_PYTHON+=	Boa.py
REPLACE_PYTHON+=	Examples/advanced/FramePanels/wxApp1.py
REPLACE_PYTHON+=	Examples/frames/wxApp1.py
REPLACE_PYTHON+=	Examples/guide/App1.py
REPLACE_PYTHON+=	Examples/mdi/wxApp1.py
REPLACE_PYTHON+=	ExternalLib/ndiff.py
REPLACE_PYTHON+=	ExternalLib/pylint.py
REPLACE_PYTHON+=	ExternalLib/reindent.py
REPLACE_PYTHON+=	ExternalLib/tarfile.py

INSTALLATION_DIRS=	bin

USE_TOOLS+=	pax

do-build:
	${SED} ${SEDSUBSTS} < ${FILESDIR}/Boa.sh > ${WRKDIR}/Boa

do-install:
	cd ${WRKSRC} && pax -rw . ${DESTDIR}${BOADIR}
	${CHMOD} -R go-w ${DESTDIR}${BOADIR}
	${INSTALL_SCRIPT} ${WRKDIR}/Boa ${DESTDIR}${PREFIX}/bin

.include "../../lang/python/application.mk"
.include "../../x11/py-wxWidgets/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
