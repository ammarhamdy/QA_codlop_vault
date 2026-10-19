---
tc_id: TC-FAV-002
title: Verify Tapping Heart Icon on Favorited Place Removes It with Confirmation Message
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
| User Session | Authenticated Customer (`0501122334`) |
| Chalet Name | `منتجع النخيل` |
| Chalet ID | `CH-9012` |
| Initial State | Favorited (filled heart icon) |
| Removal Toast | `«أُزيل من المفضلة»` |

# Preconditions
1. Customer is logged in to the Chalets mobile application.
2. Chalet `منتجع النخيل` is currently saved in the customer's favorites list (heart icon is filled).
3. Customer is viewing the chalet on the place page or search results card.

# Steps
1. Locate the filled heart icon on the chalet card or chalet details page.
2. Tap the filled heart icon once.
3. Observe the immediate visual change of the heart icon.
4. Verify the confirmation toast message displayed on the screen.
5. Verify that the toast notification contains only text and does NOT offer an "Undo" / "تراجع" button.
6. Navigate to the "Favorites" screen (`المفضلة`) in the customer profile.

# Expected Result
1. The heart icon immediately reverts from filled to outline/empty state.
2. A toast message appears with the exact Arabic text: `«أُزيل من المفضلة»`.
3. The toast notification does NOT contain any "Undo" or "تراجع" action button.
4. The chalet `منتجع النخيل` is removed from the customer's favorites list and no longer appears on the "Favorites" screen.

# Notes
- Requirement: UF-20 Step 2 ("Taps the heart again -> Removes the place and shows «أُزيل من المفضلة»").
- No undo button is displayed in the notification; removal is direct.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:25*
