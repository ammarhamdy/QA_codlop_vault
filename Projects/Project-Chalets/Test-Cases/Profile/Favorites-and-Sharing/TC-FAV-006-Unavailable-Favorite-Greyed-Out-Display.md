---
tc_id: TC-FAV-006
title: Verify Unavailable or Administratively Suspended Favorite Appears Greyed Out with Status Label
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
| Chalet Name | `شاليه الأثير` |
| Inactivity Reason | Lessor subscription expired or ad administratively suspended |
| Expected Badge Label | `غير متاح حاليًا` |

# Preconditions
1. Customer has `شاليه الأثير` saved in their favorites list.
2. In admin/backend portal, `شاليه الأثير` is marked unavailable (due to lessor subscription expiration, deletion, or administrative suspension).
3. Customer opens the Favorites screen.

# Steps
1. Navigate to the Favorites screen.
2. Inspect the card for `شاليه الأثير`.
3. Verify visual card styling (opacity, color palette).
4. Verify presence and wording of the status badge.
5. Attempt to tap the card to initiate booking.

# Expected Result
1. The unavailable favorite is not automatically purged from the customer's personal list; it remains visible in the list.
2. The card appears visibly greyed out / dimmed to convey inactive status.
3. The card displays a prominent label/badge: `«غير متاح حاليًا»`.
4. The card remains unchangeable / disabled for new bookings.

# Notes
- Requirement: UF-20 Alternative Flow A2 and Notes ("A favorite place is currently unavailable: It stays in the list, greyed out, labeled «غير متاح حاليًا», with a Remove button. When ad is suspended or deleted: Stays as it was but becomes unchangeable").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
