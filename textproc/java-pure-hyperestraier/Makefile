# $NetBSD: Makefile,v 1.1.1.1 2009/05/25 09:43:52 obache Exp $
#

.include "../../textproc/hyperestraier/Makefile.common"

PKGNAME=	java-pure-hyperestraier-1.0.0.${HYPERESTRAIER_VERSION}
CATEGORIES=	databases java

COMMENT=	Java pure interface of Hyper Estraier
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

MY_SUBDIR=	javapure
BUILD_DIRS=	${MY_SUBDIR}
CONFIGURE_DIRS=	${MY_SUBDIR}

GNU_CONFIGURE=	yes

TEST_TARGET=	check

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
