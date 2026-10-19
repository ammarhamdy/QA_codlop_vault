---
tc_id: TC-FAV-003
title: Verify Consecutively Tapping Heart Icon Toggles Favorite State and Backend Synchronization
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
| User Session | Authenticated Customer (`0501122334`) |
| Chalet Name | `منتجع الواحة` |
| Chalet ID | `CH-8045` |
| Initial State | Unfavorited (empty heart icon) |
| Add Toast | `«أُضيف إلى المفضلة»` |
| Remove Toast | `«أُزيل من المفضلة»` |

# Preconditions
1. Customer is logged in to the Chalets mobile application with a stable network connection.
2. Chalet `منتجع الواحة` is currently not in the customer's favorites list (heart is unselected/empty).
3. Customer is on the details page of `منتجع الواحة`.

# Steps
1. Tap the heart icon once to add the place to favorites.
2. Observe the heart icon state and toast message.
3. Tap the heart icon a second time to remove the place from favorites (reverting the action directly without an undo button).
4. Observe the heart icon state and toast message.
5. Tap the heart icon a third time to re-add the place to favorites.
6. Observe the heart icon state and toast message.
7. Navigate to the "Favorites" tab in the customer profile and pull to refresh.

# Expected Result
1. Step 1: Heart icon transitions to filled; toast `«أُضيف إلى المفضلة»` appears with no undo button.
2. Step 3: Heart icon transitions back to outline/empty; toast `«أُزيل من المفضلة»` appears with no undo button.
3. Step 5: Heart icon transitions to filled; toast `«أُضيف إلى المفضلة»` appears.
4. The application cleanly manages rapid consecutive toggles without race conditions, UI state glitches, or server sync mismatches.
5. Step 7: "Favorites" list accurately reflects the final state, displaying `منتجع الواحة` in the list.

# Notes
- Replaces previous undo button assumption: users toggle favorite state by repeatedly tapping the heart icon directly.
- Validates debouncing/queueing of favorite/unfavorite API requests.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:25*
