---
tc_id: TC-SRCH-015
title: Verify Designated Empty State Displays When No Listings Match Search or Filter Criteria
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
| Unmatched Filter Query | City: `تبوك`, Price From: `10000 ر.س`, Guests: `50` |
| Expected Empty State Message | `لا توجد أماكن مطابقة. جرّب إزالة بعض الفلاتر` |

# Preconditions
1. Database contains no published chalets that meet the test query combination.
2. User is on the Search & Filters screen.

# Steps
1. Apply the test filter criteria yielding zero matching results.
2. Tap Apply / Search.
3. Observe the main view of the search results screen.
4. Verify the exact Arabic text of the empty state message.

# Expected Result
1. The search results area renders the designated empty state message:
   `«لا توجد أماكن مطابقة. جرّب إزالة بعض الفلاتر»`
2. No blank screens, endless spinners, or unhandled exceptions are shown.
3. The user can interact with the filter bar or reset filters directly.

# Notes
- Requirement: `قواعد الفلاتر: لا نتائج: «لا توجد أماكن مطابقة. جرّب إزالة بعض الفلاتر».`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
