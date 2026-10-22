---
tc_id: TC-SUB-019
title: Verify System Blocks Upgrade When Subscription Is Expired or Renewal Is Awaiting Start
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Subscription Status | Attempted Action | Expected System Result |
| ------------------- | ---------------- | ---------------------- |
| `Expired` (`منتهي`) | Tap "Upgrade" | Blocked / Disabled (Must Renew instead) |
| `Awaiting Start` (`بانتظار البدء`) | Tap "Upgrade" | Blocked / Disabled |

# Preconditions
1. Test Session A: Lessor has an `Expired` subscription.
2. Test Session B: Lessor has an active subscription, but already has a renewal in `Awaiting Start`.

# Steps
1. Under Session A (Expired), navigate to "My Subscription".
2. Check if the "Upgrade" option is presented or enabled.
3. Attempt to trigger the upgrade endpoint `/api/subscriptions/upgrade`.
4. Under Session B (Awaiting Start), navigate to "My Subscription".
5. Check if the "Upgrade" option is enabled.
6. Attempt to trigger the upgrade endpoint.

# Expected Result
1. Upgrading an `Expired` subscription is prohibited; lessor can only perform late renewal.
2. Upgrading while a renewal is already `Awaiting Start` is prohibited.
3. The UI disables or hides the Upgrade action, and any direct API submission is rejected with an authorization/precondition error (Error Flow E2).

# Notes
- Requirement: UF-60 Error Flow E2 & Notes (Closed questions: "Can the lessor upgrade while a renewal is Awaiting Start? No").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
