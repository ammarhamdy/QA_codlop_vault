---
tc_id: TC-FAV-016
title: Verify Inspected Badge Is Rendered Exclusively When Place Verification Is Complete
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet A (Inspected) | Verified inspection status = true |
| Chalet B (Uninspected) | Verified inspection status = false |
| Badge Label | `تمت المعاينة` (Inspected) |

# Preconditions
1. Chalet A has undergone on-site physical inspection and is flagged as verified in the admin database.
2. Chalet B has not undergone inspection.
3. Web share links generated for both chalets.

# Steps
1. Open the share web link for Chalet A in a browser without the mobile app.
2. Inspect the badge elements near the title/header area.
3. Open the share web link for Chalet B in a browser without the mobile app.
4. Inspect the badge elements for Chalet B.

# Expected Result
1. On Chalet A's page, the **"Inspected"** (`تمت المعاينة`) badge is clearly rendered with its official verification icon.
2. On Chalet B's page, the "Inspected" badge is completely hidden; no verification badge or placeholder is displayed.
3. The badge is strictly conditional on verified inspection data.

# Notes
- Requirement: UF-22 Step 2 and Notes ("Is the 'Inspected' badge shown only when the place was actually inspected? YES").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
