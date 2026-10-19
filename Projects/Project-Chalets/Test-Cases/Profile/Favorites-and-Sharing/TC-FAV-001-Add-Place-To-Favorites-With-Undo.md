---
tc_id: TC-FAV-001
title: Verify Tapping Heart Icon Adds Place to Favorites with Confirmation Message and Undo Option
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
| Chalet Name | `شاليه النسيم` |
| Chalet ID | `CHALET-1001` |
| Initial Heart State | Empty / Outline (Unfavorited) |
| Expected Active Heart State | Filled / Red (Favorited) |
| Expected Toast Message | `أُضيف إلى المفضلة` with `[Undo]` action |

# Preconditions
1. Customer is logged in with an active client account.
2. Chalet `CHALET-1001` is not currently in the customer's favorites list.
3. Customer is viewing the chalet card on the home screen or place details page.

# Steps
1. Navigate to `شاليه النسيم` card in search results or open its place details page.
2. Verify initial heart icon is in the inactive (unfilled) state.
3. Tap the heart icon.
4. Observe immediate UI state change, toast notification, and backend persistence.
5. Navigate to the "Favorites" (`المفضلة`) tab from the bottom navigation bar.

# Expected Result
1. The heart icon immediately transitions to the filled / active state.
2. A confirmation banner/toast appears displaying: `«أُضيف إلى المفضلة»` alongside an actionable **[Undo]** (`تراجع`) button.
3. Opening the Favorites screen displays `شاليه النسيم` at the top of the saved places list.

# Notes
- Requirement: UF-20 Main Flow Step 1.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
