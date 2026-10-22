---
tc_id: TC-SUB-012
title: Verify Late Renewal After Expiry Activates Immediately and Restores Ads
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
| Old Subscription Status | `Expired` (`منتهي`, Final) |
| Late Renewal Payment Approval Date | `2026-10-21` |
| New Package Duration | 30 days |
| Expected New Expiry | `2026-11-19 23:59:59` |

# Preconditions
1. Lessor's subscription has already expired.
2. Lessor's ads are in status `Hidden for Subscription Expiry`.
3. Lessor taps "Renew Now" on the red dashboard card and submits payment for a 30-day package.

# Steps
1. As Finance admin, approve the late renewal payment request.
2. In database and lessor app, observe the status and start time of the new subscription.
3. Observe the status of the previously expired subscription.
4. Check the visibility and status of the lessor's previously hidden ads.

# Expected Result
1. The expired subscription remains permanently `Expired`.
2. A completely new subscription record is created and transitions directly to `Active` at the moment of approval.
3. The new subscription starts on the approval day and runs for full duration (`2026-11-19 23:59:59`).
4. The system triggers the ad restoration flow (UF-61), restoring the lessor's ads.

# Notes
- Requirement: UF-59 Main Flow Step 6 & Alternative Flow A3 ("Old subscription is expired -> Expired is final. Renewal always creates a new subscription").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
