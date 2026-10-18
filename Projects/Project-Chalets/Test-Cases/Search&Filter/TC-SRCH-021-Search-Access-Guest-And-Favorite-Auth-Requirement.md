---
tc_id: TC-SRCH-021
title: Verify Search Access for Guests and Authentication Prompt on Favorite Action
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Actor | Access Mode | Expected Search Capability | Expected Favorite Action Behavior |
| ----- | ----------- | -------------------------- | --------------------------------- |
| Guest / Visitor | Unauthenticated | Full search & filter access | Prompts login modal |
| Client | Authenticated | Full search & filter access | Toggles favorite state (adds/removes) |

# Preconditions
1. Active published listings exist in search results.
2. User is initially unauthenticated (guest).

# Steps
1. As an unauthenticated guest, navigate to the Search screen.
2. Enter search parameters, apply filters, and view search results cards.
3. On any rendered result card, tap the Favorite heart button (`زر المفضلة`).
4. Observe the system response.
5. Proceed to authenticate (log in) with a valid client account.
6. Return to search results and tap the Favorite heart button on the result card again.
7. Observe the card's favorite state and verify in the user's favorites list.

# Expected Result
1. Guests can freely search, filter, and inspect listing cards without any authentication barrier.
2. When a guest taps the favorite button, the application prompts the user to log in or register before persisting the favorite.
3. When an authenticated client taps the favorite button, the card updates immediately (heart icon fills/activates) and the listing is saved to the client's favorites list.

# Notes
- Requirement: `شكل نتائج البحث: زر المفضلة` & discovery authorization permissions (`GET /search: زائر، مستخدم`).

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
