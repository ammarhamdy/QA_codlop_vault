---
tc_id: TC-SUB-006
title: Verify Seamless Transition When Renewal Subscription Is Awaiting Start
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Current Subscription | Queued Renewal Subscription |
| ----- | -------------------- | --------------------------- |
| Subscription ID | `SUB-2026-00450` | `SUB-2026-00451` |
| Initial Status | `Active` | `Awaiting Start` (`بانتظار البدء`) |
| Transition Moment | `2026-10-21 23:59:59` to `2026-10-22 00:00:00` |

# Preconditions
1. Lessor has an active subscription `SUB-2026-00450` ending `2026-10-21`.
2. Lessor previously renewed early; renewal `SUB-2026-00451` is paid, approved, and currently in status `Awaiting Start`.

# Steps
1. Advance clock to `2026-10-21 23:59:59`.
2. Trigger the scheduled subscription lifecycle job.
3. Check if any expiration notice or red card is dispatched.
4. Advance clock to `2026-10-22 00:00:00`.
5. Check status of `SUB-2026-00450` and `SUB-2026-00451`.
6. Continuously poll public search visibility of lessor's ads during the midnight cutover.

# Expected Result
1. No expiration notification or red dashboard card is sent/shown to the lessor.
2. Old subscription `SUB-2026-00450` moves to `Expired`.
3. Renewal subscription `SUB-2026-00451` transitions seamlessly from `Awaiting Start` to `Active`.
4. Lessor's published ads remain visible continuously without any momentary hiding or flickering.

# Notes
- Requirement: UF-57 Alternative Flow A1 & Notes (Closed question: "When a renewal moves from Awaiting Start to Active, are ads hidden for a moment or stay visible? Stay visible").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
