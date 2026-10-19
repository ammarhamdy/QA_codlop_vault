---
tc_id: TC-FAV-007
title: Verify Customer Can Remove Unavailable Place Directly from Favorites Screen
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
| Chalet Name | `شاليه السكون` |
| Place Status | Currently Unavailable (`غير متاح حاليًا`) |
| Action Button | **Remove** (`حذف`) |

# Preconditions
1. `شاليه السكون` is listed on the customer's Favorites screen as greyed out with label «غير متاح حاليًا».
2. The card displays a dedicated "Remove" button.

# Steps
1. Navigate to the Favorites screen.
2. Locate the unavailable place card for `شاليه السكون`.
3. Verify presence of the **"Remove"** (`حذف`) button.
4. Tap the **Remove** button.
5. Refresh or re-open the Favorites screen.

# Expected Result
1. Tapping Remove immediately eliminates `شاليه السكون` from the customer's favorites list.
2. A confirmation toast is displayed indicating the item was removed.
3. The card disappears from the list, and subsequent loads of the screen do not show the removed item.

# Notes
- Requirement: UF-20 Main Flow Step 4 and Flow A2 ("Taps Remove on an unavailable place: Removes it from the list").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
