---
tc_id: TC-SRCH-003
title: Verify Search Result Card Displays Average Rating or New Badge for Unrated Listings
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Listing A (Reviewed) | Rating: `4.7`, Reviews Count: `18` |
| Listing B (New / Unrated) | Reviews Count: `0` |
| Expected Badge for Listing B | `جديد` (New) |

# Preconditions
1. Listing A has 18 completed reviews averaging 4.7 stars.
2. Listing B is newly listed with zero customer reviews.
3. Both listings are active, published, and appear in search results.

# Steps
1. Execute a search that includes both Listing A and Listing B in the result set.
2. Locate the rating indicator on Listing A's card.
3. Locate the rating indicator on Listing B's card.

# Expected Result
1. Listing A displays average rating score alongside the count of reviews (e.g. `★ 4.7 (18)`).
2. Listing B does not show numeric rating or 0 count; instead, it displays the badge `جديد` (New).

# Notes
- Requirement: `شكل نتائج البحث: متوسط التقييم وعدده أو «جديد».`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
