---
tc_id: TC-SUB-024
title: Verify Finance Can Apply Compensatory Subscription Extension Up to 730 Days
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value | Boundary Rule |
| ----- | ----- | ------------- |
| Current Expiry Date | `2026-10-31 23:59:59` | Active Subscription |
| Compensatory Extension | 14 days | Valid |
| Updated Expiry Date | `2026-11-14 23:59:59` | Exactly 14 days added |
| Maximum Allowed Extension | 730 days | Valid |
| Disallowed Extension | 731 days | Exceeds 730-day maximum |

# Preconditions
1. Lessor has an `Active` subscription.
2. Finance admin is logged in with administrative compensation permissions.

# Steps
1. In Admin console, navigate to Lessor Management -> Subscriptions -> View Subscription.
2. Select action **"Compensatory Extension"** (`تمديد تعويضي`).
3. Attempt to enter 731 days and observe validation.
4. Enter 14 days and submit the extension.
5. In database and lessor app, inspect the new subscription end date.
6. Verify notifications delivered to the lessor.

# Expected Result
1. Extensions exceeding the 730-day cap are rejected by boundary validation.
2. The 14-day extension is applied successfully; the end date shifts forward from `2026-10-31` to `2026-11-14 23:59:59`.
3. The lessor receives an official notification regarding the compensatory extension.
4. Active published ads and bookings continue uninterrupted.

# Notes
- Requirement: UF-62 Main Flow Steps 1 to 3 & Notes (Closed questions: "Is there a maximum number of days? 730").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
