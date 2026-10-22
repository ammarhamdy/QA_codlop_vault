---
tc_id: TC-SUB-018
title: Verify Approved Upgrade Starts on Approval Day with Full Duration and Carried Credits
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value Before Upgrade | Value After Upgrade Approval |
| ----- | -------------------- | ---------------------------- |
| Package Duration | 30 days (10 days left) | 60 days (Full duration from today) |
| Total Ad Quota | 5 ads | 12 ads |
| Consumed Ads Count | 3 published ads | 3 consumed ads (Carried over) |
| Featured Ads Count | 1 featured ad | 1 featured ad (Carried over) |
| Remaining New Ad Quota | `5 - 3 = 2` | `12 - 3 = 9` remaining ads |

# Preconditions
1. Lessor has an active subscription with 3 published ads and 1 featured ad.
2. Lessor submits an upgrade payment request for a higher 12-ad package (60 days).

# Steps
1. As Finance admin, approve the upgrade payment request on `2026-10-21`.
2. Inspect the start date, end date, and duration of the newly active subscription.
3. Check the status of the previous subscription.
4. Verify the consumed ad counter and available ad quota in "My Subscription".
5. Verify whether the 1 previously featured ad remains featured.

# Expected Result
1. The new upgraded package activates immediately on the approval day (`2026-10-21`) and runs for its full duration (60 days).
2. The old subscription is removed/replaced.
3. Consumed ad credits (3 published ads) carry over cleanly to the new package.
4. The new available ad capacity immediately expands to `9` remaining ads (`12 - 3`).
5. Featured ads count carries over without requiring re-application.

# Notes
- Requirement: UF-60 Main Flow Steps 5 to 6 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
