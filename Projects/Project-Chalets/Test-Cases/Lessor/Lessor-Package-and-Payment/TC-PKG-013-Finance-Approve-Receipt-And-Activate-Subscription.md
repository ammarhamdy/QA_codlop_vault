---
tc_id: TC-PKG-013
title: Verify Finance Approval Activates Subscription Immediately with Precise Expiry Calculation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Package Duration | 30 days |
| Approval Timestamp | `2026-10-21 15:30:00` (Riyadh Time) |
| Calculated Expiry Timestamp | `2026-11-19 23:59:59` (Riyadh Time) |
| Notification Format | `«تم تفعيل اشتراكك في باقة البداية حتى 2026-11-19»` |

# Preconditions
1. Payment request `PAY-2026-000107` has status `Awaiting Approval` with valid receipt uploaded.
2. Package duration is 30 days.
3. Finance admin user is authenticated with review permissions.

# Steps
1. In Admin portal, open payment request `PAY-2026-000107`.
2. Inspect the uploaded receipt, fixed price, package details, and transfer date.
3. Tap **Approve** (`اعتماد الطلب`).
4. In database and lessor app, check the subscription status and start/end dates.
5. In lessor mobile app, check received notifications and the "Payment Receipt" download link.

# Expected Result
1. Payment request status updates to `Approved` (`معتمد`).
2. The subscription activates immediately at the moment of approval (`2026-10-21`).
3. The expiration date is precisely calculated as day `(start + duration - 1)` at `23:59:59` Riyadh time (`2026-11-19 23:59:59`).
4. The lessor receives a notification: `«تم تفعيل اشتراكك في باقة البداية حتى 2026-11-19»` with an active PDF link to download and share the payment receipt.

# Notes
- Requirement: UF-44 Main Flow Steps 3 to 5 & Notes.
- Follows the exact formula: day (start + duration - 1) at 23:59:59 Riyadh time.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
