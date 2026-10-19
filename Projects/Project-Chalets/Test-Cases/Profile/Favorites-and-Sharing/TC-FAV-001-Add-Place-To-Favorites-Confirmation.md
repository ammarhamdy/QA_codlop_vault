---
tc_id: TC-FAV-001
title: Verify Tapping Heart Icon Adds Place to Favorites with Confirmation Message
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
| Initial State | Unfavorited (empty/outline heart icon) |
| Confirmation Toast | `«أُضيف إلى المفضلة»` |

# Preconditions
1. Customer is logged in to the Chalets mobile application.
2. Chalet `منتجع النخيل` exists, is active/available, and is currently NOT in customer's favorites list.
3. Customer is viewing the chalet card in search results or on the chalet details screen.

# Steps
1. Locate the empty/outline heart icon on the chalet card or chalet details page.
2. Tap the heart icon once.
3. Observe the immediate visual change of the heart icon.
4. Verify the confirmation toast message displayed on the screen.
5. Verify that the toast notification contains only text and does NOT offer an "Undo" / "تراجع" button.
6. Navigate to the "Favorites" screen (`المفضلة`) in the customer profile.

# Expected Result
1. The heart icon immediately fills (changes from outline to filled active state).
2. A toast message appears with the exact Arabic text: `«أُضيف إلى المفضلة»`.
3. The toast message does NOT contain any "Undo" or "تراجع" action button.
4. The chalet `منتجع النخيل` is persisted in the customer's favorites list and appears at the top (newest first).

# Notes
- Requirement: UF-20 Step 1 ("Taps the heart on a card or place page -> Adds the place and shows «أُضيف إلى المفضلة»").
- No undo button exists; reversing favorite status is achieved by tapping the heart icon again.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:25*
