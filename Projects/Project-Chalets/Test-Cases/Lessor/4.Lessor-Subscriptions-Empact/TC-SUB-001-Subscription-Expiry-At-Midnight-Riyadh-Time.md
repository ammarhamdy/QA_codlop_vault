---
tc_id: TC-SUB-001
title: Verify Subscription Status Transitions to Expired at Midnight Riyadh Time
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
| Subscription ID | `SUB-2026-00450` |
| End Date | `2026-10-21` |
| Expiry Cutoff | `2026-10-21 23:59:59` (Riyadh Time, UTC+3) |
| Renewal Status | None (No renewal Awaiting Start) |

# Preconditions
1. Lessor has an active subscription `SUB-2026-00450` ending on `2026-10-21`.
2. No renewal subscription exists in `Awaiting Start` status.

# Steps
1. Monitor subscription status at `2026-10-21 23:59:58` Riyadh time.
2. Advance system clock to `2026-10-21 23:59:59` and trigger the scheduled expiration worker.
3. Advance system clock to `2026-10-22 00:00:00`.
4. Inspect the subscription status in the database and API.

# Expected Result
1. At exactly `23:59:59` on the end day, subscription status transitions from `Active` to `Expired` (`منتهي`).
2. The `Expired` status is final and immutable.
3. The expiration event triggers downstream processes (ad hiding, notifications, booking restrictions).

# Notes
- Requirement: UF-57 Main Flow Step 1 & Notes.
- All timing is based strictly on Saudi Arabia standard time (Riyadh, UTC+3).

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
