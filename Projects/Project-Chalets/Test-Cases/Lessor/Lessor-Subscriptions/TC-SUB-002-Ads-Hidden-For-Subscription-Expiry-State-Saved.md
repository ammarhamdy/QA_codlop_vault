---
tc_id: TC-SUB-002
title: Verify Ads Are Hidden for Subscription Expiry with Previous States Saved
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Ad ID | State Before Expiry | Expected State After Expiry | Saved Previous State Attribute |
| ----- | ------------------- | --------------------------- | ------------------------------ |
| `AD-101` | `Published` (`منشور`) | `Hidden for Subscription Expiry` | `Published` |
| `AD-102` | `Disabled` (`معطل`) | `Hidden for Subscription Expiry` | `Disabled` |
| `AD-103` | `Draft` (`مسودة`) | Inactive / Hidden | `Draft` |
| `AD-104` | `Under Review` (`قيد المراجعة`) | Inactive / Hidden | `Under Review` |

# Preconditions
1. Lessor owns ads across different lifecycle states (`Published`, `Disabled`, `Draft`, `Under Review`).
2. Lessor's subscription expires at 23:59:59.

# Steps
1. Execute the subscription expiration process.
2. In the database, check the status of each ad belonging to the lessor.
3. Verify the `previous_state` or `saved_state` column/metadata for each ad.
4. As an unauthenticated client, search for `AD-101` on the public platform.
5. In the lessor dashboard, view "My Ads" (`إعلاناتي`).

# Expected Result
1. Published ads move to status `Hidden for Subscription Expiry` (`مخفي لانتهاء الاشتراك`) and disappear from public search results.
2. Each ad's prior state (`Published`, `Disabled`, etc.) is recorded and preserved in metadata for restoration.
3. Inactive/draft ads are disabled or flagged appropriately.
4. In the lessor app, ads are labeled with an expiry notice indicator.

# Notes
- Requirement: UF-57 Main Flow Step 2 & Notes (Closed questions: "Are ads in Draft, Under Review, Changes Requested, or Rejected affected at expiry? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
