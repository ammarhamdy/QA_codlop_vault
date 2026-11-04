---
tc_id: TC-BRWTND-008
title: Verify Accuracy of Remaining Time Countdown Display on Tender Cards
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender A (`end_date`) | Current time + `14 days` |
| Tender B (`end_date`) | Current time + `3 hours` |
| Expected Display A | `"14 days remaining"` (or localized equivalent) |
| Expected Display B | `"3 hours remaining"` (or localized equivalent) |

# Preconditions
1. Active open tenders exist with varying expiration dates.
2. The user is an unauthenticated Professional viewing the catalog.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Locate the tender card for Tender A and inspect its remaining time badge/indicator.
3. Locate the tender card for Tender B and inspect its remaining time badge/indicator.
4. Calculate the time difference between current system time and each tender's `end_date`.

# Expected Result
1. The remaining time badge accurately reflects the difference between `end_date` and current time:
   - Tender A displays approximately `14 days remaining`.
   - Tender B displays approximately `3 hours remaining`.
2. No tender displays negative remaining time, as expired tenders are filtered out.
3. Formatting is consistent and clear across all tender cards.

# Notes
- Validates Step 3 of the Main Flow in UF-10 ("remaining time until expiration").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
