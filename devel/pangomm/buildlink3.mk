# $NetBSD: buildlink3.mk,v 1.9 2011/05/12 11:15:43 adam Exp $

BUILDLINK_TREE+=	pangomm

.if !defined(PANGOMM_BUILDLINK3_MK)
PANGOMM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pangomm+=	pangomm>=2.26.2
BUILDLINK_ABI_DEPENDS.pangomm+=	pangomm>=2.26.3nb2
BUILDLINK_PKGSRCDIR.pangomm?=	../../devel/pangomm

.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairomm/buildlink3.mk"
.endif # PANGOMM_BUILDLINK3_MK

BUILDLINK_TREE+=	-pangomm
