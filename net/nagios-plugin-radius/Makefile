# $NetBSD: Makefile,v 1.7 2011/06/07 11:47:04 taca Exp $
#

PKGNAME=	nagios-plugin-radius-${PLUGINSVERSION}
PKGREVISION=	2
CATEGORIES=	net sysutils

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Nagios radius plugin
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	nagios-plugins-${PLUGINSVERSION}{,nb[0-9]*}:../../net/nagios-plugins
DEPENDS+=	p5-Net-SNMP-[0-9]*:../../net/p5-Net-SNMP

# linked with libradiusclient-ng.so.
BUILDLINK_DEPMETHOD.radiusclient-ng= full

BUILD_DEFS+=	PKG_SYSCONFBASE

.include "../../net/nagios-plugins/Makefile.common"

BINARY_TARGET=	check_radius

SUBST_CLASSES+=		config
SUBST_STAGE.config=	post-patch
SUBST_FILES.config=	plugins/check_radius.c
SUBST_SED.config=	-e "s|@SYSCONFDIR@|${PKG_SYSCONFBASE}|g"
SUBST_MESSAGE.config=	Fixing configuration file path.

.include "../../net/nagios-plugins/Makefile.plugin"
.include "../../net/radiusclient-ng/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
