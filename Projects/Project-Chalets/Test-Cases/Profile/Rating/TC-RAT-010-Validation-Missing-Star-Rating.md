---
tc_id: TC-RAT-010
title: Verify Form Validation Blocks Submission When No Star Rating Is Selected
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking ID | `BK-7710` |
| Selected Stars | `0` (Unselected) |
| Comment Text | `المكان كان جيداً بشكل عام والخدمة مقبولة.` |
| Validation Error | `«اختر عدد النجوم»` |

# Preconditions
1. Customer has a completed booking `BK-7710` with no rating submitted.
2. Customer is on the rating form for `BK-7710`.

# Steps
1. Leave all star rating options unselected (0 stars).
2. Enter a valid comment: `المكان كان جيداً بشكل عام والخدمة مقبولة.` (41 characters).
3. Tap **"Submit Rating"** (`إرسال التقييم`).
4. Observe the interface response and error indicators.

# Expected Result
1. The submission is blocked immediately.
2. The system displays validation error message: `«اختر عدد النجوم»`.
3. The confirmation modal does NOT appear.
4. No rating record is saved in the database.

# Notes
- Requirement: UF-14 Alternative Flow E1 ("No stars selected -> Blocked with «اختر عدد النجوم»").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
