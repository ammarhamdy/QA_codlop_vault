---
tc_id: TC-PKG-026
title: Verify Subscription Expiry Automatically Disables Existing Ads and Blocks New Publications
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
| Subscribed Chalets | `شاليه الياسمين` (Published), `شاليه الريان` (Published) |
| Expiration Timestamp | `2026-10-21 23:59:59` |

# Preconditions
1. Lessor's subscription reaches its final expiration timestamp.
2. Lessor has 2 active published ads (`شاليه الياسمين` and `شاليه الريان`).

# Steps
1. Simulate expiration timestamp passing (`2026-10-22 00:00:01`).
2. Run system scheduled subscription worker.
3. As a customer, search for `شاليه الياسمين` and `شاليه الريان` on the public platform.
4. As the lessor, open the ads management screen and attempt to publish a new ad draft.

# Expected Result
1. Upon subscription expiry, all existing published ads belonging to the lessor are automatically changed to disabled state and removed from public search results.
2. The lessor is blocked from publishing any new ads until a valid subscription is purchased/renewed.
3. The lessor dashboard displays an expired subscription alert prompting renewal.

# Notes
- Requirement: UF-46 Notes (Closed question: "What happens to published ads when the subscription ends? No new Ads can published, Old Ads disabled").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
