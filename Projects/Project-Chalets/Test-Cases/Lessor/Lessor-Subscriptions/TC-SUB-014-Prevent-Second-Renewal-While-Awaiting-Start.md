---
tc_id: TC-SUB-014
title: Verify System Prevents Second Renewal While One Is Already Awaiting Start
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Current Subscription | `SUB-101` (Active, 10 days remaining) |
| Queued Subscription | `SUB-102` (Status: `Awaiting Start`) |

# Preconditions
1. Lessor has an active subscription `SUB-101`.
2. Lessor has already renewed; renewal `SUB-102` is approved and in status `Awaiting Start`.

# Steps
1. Navigate to "My Subscription" in the lessor application.
2. Check whether a **"Renew"** button or option is offered.
3. Attempt to trigger an API renewal request for a third subscription.

# Expected Result
1. The renewal option is disabled or hidden while a subscription is already `Awaiting Start`.
2. Any attempt to queue a second renewal is rejected by system business logic.
3. Only one renewal subscription can wait in the queue at a time.

# Notes
- Requirement: UF-59 Notes (Closed question: "Can a second renewal be requested while one is already Awaiting Start? No").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
