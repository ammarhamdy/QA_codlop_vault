---
tc_id: TC-FAV-003
title: Verify Tapping Undo Reverts Favorite Add and Remove Operations Immediately
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
| Chalet A (Add -> Undo Test) | `شاليه الفيروز` |
| Chalet B (Remove -> Undo Test) | `شاليه الياسمين` |
| Undo Toast Timeout Window | `5 Seconds` |

# Preconditions
1. Customer is logged in to the application.
2. `شاليه الفيروز` is not favorited.
3. `شاليه الياسمين` is currently in favorites.

# Steps
1. Scenario 1 (Revert Add):
   - Tap heart icon on `شاليه الفيروز` to add it.
   - While the toast «أُضيف إلى المفضلة» is visible, tap **[Undo]** (`تراجع`).
   - Check heart icon state on `شاليه الفيروز` and inspect Favorites list.
2. Scenario 2 (Revert Remove):
   - Navigate to `شاليه الياسمين` and tap heart icon to remove it.
   - While the toast «أُزيل من المفضلة» is visible, tap **[Undo]** (`تراجع`).
   - Check heart icon state on `شاليه الياسمين` and inspect Favorites list.

# Expected Result
1. In Scenario 1, tapping Undo immediately removes `شاليه الفيروز` from favorites and reverts the heart icon to empty.
2. In Scenario 2, tapping Undo immediately restores `شاليه الياسمين` back to the favorites list and resets the heart icon to filled.
3. Database states correctly synchronize with both undo operations.

# Notes
- Requirement: UF-20 Steps 1–2 (Undo functionality).

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
