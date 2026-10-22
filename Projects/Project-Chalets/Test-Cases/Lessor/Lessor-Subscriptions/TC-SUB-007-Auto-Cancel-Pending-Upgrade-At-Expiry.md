---
tc_id: TC-SUB-007
title: Verify System Automatically Cancels Pending Upgrade Request at Expiry
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
| Current Subscription | `SUB-2026-00460` (Expires today at 23:59:59) |
| Upgrade Payment Request | `PAY-2026-000800` (Status: `Awaiting Approval`, receipt uploaded) |
| Post-Expiry Request Status | `Cancelled` (`ملغي`) |
| Finance Tag | `يحتاج معالجة مبلغ` |

# Preconditions
1. Lessor has an active subscription expiring today.
2. Lessor submitted an upgrade request `PAY-2026-000800` and uploaded a bank transfer receipt.
3. Finance has not reviewed or approved the upgrade before the midnight expiry deadline.

# Steps
1. Advance clock past `23:59:59` to trigger subscription expiry.
2. Check the status of payment request `PAY-2026-000800` in the database.
3. Open the Finance / Admin review console.
4. Verify the flags/tags attached to `PAY-2026-000800`.

# Expected Result
1. The pending upgrade request `PAY-2026-000800` is automatically cancelled by the system upon subscription expiry.
2. Because a receipt was already uploaded by the lessor, the record is tagged for Finance with `يحتاج معالجة مبلغ` so Finance can verify and issue a manual refund.
3. The lessor is prevented from being trapped in an invalid upgrade state on an expired subscription.

# Notes
- Requirement: UF-57 Alternative Flow A2 & UF-60 Flow A3.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
