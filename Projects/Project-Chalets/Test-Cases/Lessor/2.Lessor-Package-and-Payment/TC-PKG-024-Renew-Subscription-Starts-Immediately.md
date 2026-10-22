---
tc_id: TC-PKG-024
title: Verify Subscription Renewal Starts Immediately upon Approval
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
| Current Subscription Expiry | `2026-11-15 23:59:59` (25 days remaining) |
| Renewal Approval Date | `2026-10-21` |
| Renewal Package Duration | 30 days |
| New Calculated Expiry | `2026-11-19 23:59:59` (Starts directly on approval) |

# Preconditions
1. Lessor currently has an active subscription valid until `2026-11-15`.
2. Lessor taps **Renew** in "My Subscription" and completes payment for a 30-day renewal.

# Steps
1. As Finance/system, approve the renewal payment request on `2026-10-21`.
2. Open "My Subscription" as the lessor.
3. Inspect subscription start date, new expiration date, and remaining days.

# Expected Result
1. The renewed subscription starts directly on the date of approval (`2026-10-21`).
2. The duration does NOT append to the previous expiration date (`2026-11-15`).
3. The new expiry date is calculated directly from approval date: `2026-11-19 23:59:59`.

# Notes
- Requirement: UF-46 Notes (Closed question: "If the lessor renews while the subscription is active, does the new one start at approval or after the current end? No start directly").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
