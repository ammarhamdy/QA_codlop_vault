---
tc_id: TC-SUB-008
title: Verify Administrative Suspension Overrides Subscription Expiry State
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
| Ad ID | `AD-301` |
| Pre-Expiry State | `Administratively Suspended` (`معلق إداريًا` per UF-56) |

# Preconditions
1. Ad `AD-301` was administratively suspended due to a policy violation.
2. The owning lessor's subscription reaches its expiration deadline.

# Steps
1. Execute the subscription expiration job.
2. Inspect the database status of ad `AD-301`.
3. Check whether `AD-301` moves to `Hidden for Subscription Expiry` or remains `Administratively Suspended`.
4. As the lessor, renew the subscription (UF-59 & UF-61).
5. Verify whether `AD-301` auto-restores to Published.

# Expected Result
1. The administrative suspension strictly overrides subscription expiry logic; the ad status remains `Administratively Suspended`.
2. Even after the lessor later renews their subscription, ad `AD-301` remains suspended until explicitly lifted by an administrator.

# Notes
- Requirement: UF-57 Alternative Flow A4 & UF-61 Flow A1.
- Administrative enforcement takes precedence over commercial subscription lifecycle states.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
