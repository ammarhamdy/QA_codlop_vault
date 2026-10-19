---
tc_id: TC-RAT-012
title: Verify System Prevents Submitting Duplicate Rating for the Same Stay
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
| Booking ID | `BK-7712` |
| Duplicate Rejection Message | `«قيّمت هذه الإقامة من قبل»` |

# Preconditions
1. Customer has already successfully submitted a rating for booking `BK-7712`.
2. Booking `BK-7712` currently shows button status as **"Rated"** (`تم التقييم`).

# Steps
1. Navigate to booking details for `BK-7712` in the customer app.
2. Verify if the "Rate Your Stay" button is clickable or disabled.
3. If an invitation notification link is re-opened or direct API POST request `/api/ratings` is sent with the same booking ID `BK-7712`.
4. Observe the system response.

# Expected Result
1. In the UI, the rating button displays "Rated" and cannot be tapped to submit another review.
2. If the rating endpoint is invoked again for `BK-7712`, the request is rejected with error message: `«قيّمت هذه الإقامة من قبل»`.
3. No duplicate rating record is created, and the existing rating is not overwritten.

# Notes
- Requirement: UF-14 Alternative Flow E3 ("This source was already rated -> Rejected with «قيّمت هذه الإقامة من قبل»").
- Enforces strict one rating per booking business rule.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
