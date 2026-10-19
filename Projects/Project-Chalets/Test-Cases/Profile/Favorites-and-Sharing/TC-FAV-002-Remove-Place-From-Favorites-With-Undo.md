---
tc_id: TC-FAV-002
title: Verify Tapping Heart Icon on Favorited Place Removes It with Confirmation and Undo Option
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet Name | `شاليه المرجان` |
| Initial Heart State | Filled / Red (Favorited) |
| Expected Post-Tap State | Empty / Outline (Unfavorited) |
| Expected Toast Message | `أُزيل من المفضلة` with `[Undo]` action |

# Preconditions
1. Customer is logged in to the mobile application.
2. `شاليه المرجان` is already saved in the customer's favorites list.
3. Heart icon on the card / details page is currently filled.

# Steps
1. Open the place page or find `شاليه المرجان` card in the Favorites list.
2. Tap the active (filled) heart icon.
3. Observe UI response, icon styling, and confirmation message.
4. Navigate to the Favorites screen.

# Expected Result
1. The heart icon reverts immediately to the empty / outline state.
2. A confirmation notification is displayed stating: `«أُزيل من المفضلة»` with an actionable **[Undo]** button.
3. `شاليه المرجان` is removed from the customer's Favorites screen list.

# Notes
- Requirement: UF-20 Main Flow Step 2.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
