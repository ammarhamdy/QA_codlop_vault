---
tc_id: TC-SUB-025
title: Verify Finance Subscription Cancellation with Mandatory Justification Reason
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
| Subscription ID | `SUB-2026-00490` |
| Cancellation Reason | `إلغاء بناءً على طلب المشترك وموافقة الإدارة المالية` |
| Post-Cancellation Status | `Cancelled` (`ملغي`, Final) |

# Preconditions
1. Subscription `SUB-2026-00490` is currently `Active`.
2. Finance admin has subscription management permissions.

# Steps
1. In Admin panel, open subscription `SUB-2026-00490`.
2. Choose **"Cancel Subscription"** (`إلغاء الاشتراك`).
3. Enter the cancellation reason: `إلغاء بناءً على طلب المشترك وموافقة الإدارة المالية`.
4. Confirm cancellation.
5. In database, check the status of `SUB-2026-00490`.
6. Verify whether the lessor receives a cancellation notice.
7. Attempt to make a new booking on the lessor's chalets.
8. Check if existing confirmed bookings remain active.

# Expected Result
1. The subscription status transitions to `Cancelled` (`ملغي`), which is permanent and final.
2. The cancellation reason is recorded in the audit trail.
3. The lessor is notified of the cancellation.
4. New bookings are stopped on the lessor's chalets, while existing bookings continue without interruption.

# Notes
- Requirement: UF-62 Alternative Flow A1 & Notes (Closed question: "Does cancellation hide the ads and stop new bookings, as expiry does? ONLY Stop new bookings").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
