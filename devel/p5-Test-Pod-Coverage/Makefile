# $NetBSD: Makefile,v 1.10 2011/08/14 12:26:43 obache Exp $
#

DISTNAME=		Test-Pod-Coverage-1.08
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		3
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Test-Pod-Coverage/
COMMENT=		Check for pod coverage in your distribution

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-Pod-Coverage-[0-9]*:../../textproc/p5-Pod-Coverage

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Test/Pod/Coverage/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
