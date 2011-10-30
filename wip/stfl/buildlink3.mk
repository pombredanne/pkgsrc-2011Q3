# $NetBSD$

BUILDLINK_TREE+=	stfl

.if !defined(STFL_BUILDLINK3_MK)
STFL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.stfl+=	stfl>=0.19
BUILDLINK_PKGSRCDIR.stfl?=	../../wip/stfl
BUILDLINK_DEPMETHOD.stfl?=	build
.endif	# STFL_BUILDLINK3_MK

BUILDLINK_TREE+=	-stfl