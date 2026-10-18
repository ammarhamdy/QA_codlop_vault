---
tc_id: TC-SRCH-007
title: Verify Load More Failure Displays Error Message with Retry Without Losing Displayed Results
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Initial Loaded Results | `20` cards |
| Expected Error Message | `تعذر تحميل المزيد` |
| Retry Action | Retry button / action control |

# Preconditions
1. Initial 20 search results are successfully loaded on screen.
2. Network failure or server 500 error can be simulated on subsequent pagination requests.

# Steps
1. Scroll down to trigger the loading of the next page of results.
2. Simulate network disconnect or API failure during the load-more request.
3. Observe the bottom of the listings feed.
4. Verify the presence of the exact error message: `تعذر تحميل المزيد`.
5. Check whether the initial 20 cards remain visible and accessible.
6. Re-enable network connectivity.
7. Tap the retry control adjacent to `تعذر تحميل المزيد`.

# Expected Result
1. An inline error notification appears at the bottom displaying: `تعذر تحميل المزيد`.
2. The initial 20 cards remain displayed without any data loss, page blanking, or scroll reset (`دون فقد ما ظهر`).
3. Tapping the retry control successfully re-fetches and appends the next page of listings.

# Notes
- Requirement: `قواعد البحث: فشل تحميل المزيد: «تعذر تحميل المزيد» مع إعادة المحاولة دون فقد ما ظهر.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
