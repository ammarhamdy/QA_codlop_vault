---
tc_id: TC-SUB-022
title: Verify System Blocks Selecting More Ads Than Package Capacity Limit
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
| New Package Limit | 2 ads |
| Hidden Ads Available | 4 ads |
| Selected Ads Attempt | 3 ads |

# Preconditions
1. Lessor is on the ad restoration selection screen.
2. The active package permits a maximum of 2 visible ads.

# Steps
1. Select Ad 1 (Selection counter: 1/2).
2. Select Ad 2 (Selection counter: 2/2).
3. Attempt to select Ad 3.
4. If checkboxes permit selecting Ad 3, tap **Confirm Selection**.
5. Observe UI response and validation message.

# Expected Result
1. The selection interface either disables unselected checkboxes once the limit of 2 is reached, or tapping an additional ad shows a capacity limit warning.
2. If submitted, the request is rejected with a validation error preventing visible ads from exceeding package capacity.
3. The lessor is forced to select no more than 2 ads.

# Notes
- Requirement: UF-61 Error Flow E1 ("Lessor selects more ads than the package limit -> Not allowed").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
