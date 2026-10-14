---
tc_id: TC-SRCH-006
title: Verify Handling of Load More Failure with Retry Action and Data Retention
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
| Initial Loaded Results | 20 cards |
| Error Message | `تعذر تحميل المزيد` |
| Action Button | `إعادة المحاولة` (Retry) |

# Preconditions
1. Initial batch of 20 results is successfully loaded on screen.
2. Network connectivity is degraded/interrupted as user scrolls down to trigger the next batch.

# Steps
1. Scroll to the bottom of the first 20 results while simulating a network failure or server error on the pagination endpoint.
2. Observe the bottom of the list where the next page should load.
3. Check the visibility of the already loaded 20 items.
4. Restore network connectivity.
5. Tap "إعادة المحاولة" (Retry).

# Expected Result
1. The system displays the specific inline error message: `تعذر تحميل المزيد`.
2. A retry button/link `إعادة المحاولة` is clearly visible next to the message.
3. Crucially, the previously loaded 20 cards remain on the screen without being lost, cleared, or reset (`دون فقد ما ظهر`).
4. Tapping "إعادة المحاولة" after network recovery successfully loads the next batch of 20 cards beneath the existing items.

# Notes
- Requirement: `فشل تحميل المزيد: «تعذر تحميل المزيد» مع إعادة المحاولة دون فقد ما ظهر`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
