---
tc_id: TC-SRCH-016
title: Verify Default Search Sorting Order Follows Newest Price and Rating Precedence
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Listing | Published Timestamp | Price (SAR) | Rating |
| ------- | ------------------- | ----------- | ------ |
| Listing A | `2026-10-15 10:00` (Newest) | 1,500 | 4.2 |
| Listing B | `2026-10-14 08:00` | 800 (Lower Price) | 4.8 |
| Listing C | `2026-10-14 08:00` (Same Date) | 1,200 (Higher Price) | 4.9 |
| Listing D | `2026-10-10 12:00` | 800 | 4.9 |
| Listing E | `2026-10-10 12:00` (Same Date & Price) | 800 | 4.5 |

# Preconditions
1. Listings A, B, C, D, and E are published, non-featured listings matching the query in the same location.
2. User performs a default search without applying custom sorting.

# Steps
1. Execute search query matching listings A through E.
2. Inspect the returned order of cards in the search results.
3. Verify primary sort criterion: Newest (`الأحدث`).
4. Verify secondary tie-breaker sort criterion: Price (`السعر`).
5. Verify tertiary tie-breaker sort criterion: Rating (`التقييم`).

# Expected Result
1. Default ordering strictly respects the hierarchy: Newest -> Price -> Rating.
2. Listing A appears before Listings B, C, D, E (most recent publish date).
3. For Listings B and C with identical publish timestamps, the lower price listing appears first.
4. For listings with identical publish dates and prices (Listings D and E), higher rating takes precedence.

# Notes
- Requirement: `قواعد البحث و الفلاتر: الترتيب الافتراضي: الأحدث، السعر، التقييم.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
