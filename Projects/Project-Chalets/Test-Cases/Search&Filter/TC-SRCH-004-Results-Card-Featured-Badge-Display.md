---
tc_id: TC-SRCH-004
title: Verify Featured Badge Displays on Featured Chalet Cards and Hides on Standard Cards
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
| Listing A | Featured Status: `is_featured = true` |
| Listing B | Featured Status: `is_featured = false` |
| Expected Badge Text | `مميز` |

# Preconditions
1. Listing A is subscribed to an active featured promotion package.
2. Listing B is a standard non-featured listing.
3. Both listings meet the search filter criteria.

# Steps
1. Execute search query returning both Listing A and Listing B.
2. Inspect badges displayed on Listing A's card.
3. Inspect badges displayed on Listing B's card.

# Expected Result
1. Listing A prominently displays the `مميز` (Featured) badge on the card.
2. Listing B does not display the `مميز` badge.

# Notes
- Requirement: `شكل نتائج البحث: شارة «مميز». إن وُجدت.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
