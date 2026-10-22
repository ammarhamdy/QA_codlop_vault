---
tc_id: TC-SUB-013
title: Verify System Blocks Renewal When Another Payment Request Is Pending
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Pending Payment Request | `PAY-2026-000910` (Status: `Awaiting Approval`) |
| Blocking Error Message | `«لديك طلب دفع قيد المراجعة. ألغه أولًا أو انتظر القرار»` |

# Preconditions
1. Lessor already has an unresolved payment request `PAY-2026-000910` awaiting review.
2. Lessor opens the renewal entry point.

# Steps
1. Tap **"Renew Now"** from dashboard card or "My Subscription".
2. Select a package and attempt to proceed to payment method selection.
3. Observe the system response.

# Expected Result
1. The renewal request is blocked immediately.
2. The user is presented with the error: `«لديك طلب دفع قيد المراجعة. ألغه أولًا أو انتظر القرار»`.
3. No concurrent or duplicate payment request is created.

# Notes
- Requirement: UF-59 Error Flow E2.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
