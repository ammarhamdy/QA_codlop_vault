---
tc_id: TC-RAT-019
title: Verify System Permanently Blocks Re-Rating After Author Deletes a Rating
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking ID | `BK-7720` |
| Chalet Name | `منتجع الأرجوان` |
| Rating Status | `Deleted by Author` |
| Stay Status Display | `"Rating Deleted"` (`تم حذف التقييم`) |

# Preconditions
1. Customer previously submitted a rating for booking `BK-7720` and subsequently deleted it.
2. The rating status is `Deleted by Author`.
3. Customer is logged in to the mobile application.

# Steps
1. Navigate to "My Bookings" and open booking `BK-7720`.
2. Inspect the action buttons and status indicators available for `BK-7720`.
3. Check "My Stays and Rating Invitations" for any residual rating option for this stay.
4. Attempt to trigger the rating submission API directly for booking `BK-7720`.

# Expected Result
1. The booking displays "Rating Deleted" and provides no "Rate Your Stay" button.
2. The stay is not available for rating in "My Stays and Rating Invitations".
3. Direct API submission requests for `BK-7720` are blocked and rejected by business logic.
4. Rating deletion is permanent and irreversible; re-rating the same stay is strictly disallowed.

# Notes
- Requirement: UF-18 Flow E1 & UF-14 Flow E6 ("Customer deleted a previous rating of this source -> Cannot rate this source again, deletion is final").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
