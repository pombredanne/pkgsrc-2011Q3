# $NetBSD$

BUILDLINK_TREE+=	libgme

.if !defined(LIBGME_BUILDLINK3_MK)
LIBGME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgme+=	libgme>=0.5.5
BUILDLINK_PKGSRCDIR.libgme?=	../../wip/libgme
.endif	# LIBGME_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgme