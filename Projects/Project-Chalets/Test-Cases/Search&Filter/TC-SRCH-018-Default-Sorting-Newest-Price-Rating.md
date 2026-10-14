---
tc_id: TC-SRCH-018
title: Verify Default Search Results Sorting Order Priority
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
| Default Sort Criteria | 1. Newest (`الأحدث`), 2. Price (`السعر`), 3. Rating (`التقييم`) |
| Listing A | Published: `Today`, Price: `800 ر.س`, Rating: `4.5` |
| Listing B | Published: `Yesterday`, Price: `600 ر.س`, Rating: `4.9` |
| Listing C | Published: `Today`, Price: `700 ر.س`, Rating: `4.2` |
| Listing D | Published: `Today`, Price: `700 ر.س`, Rating: `4.8` |

# Preconditions
1. User executes a search query without manually applying an alternative sort order.

# Steps
1. Navigate to the search results list.
2. Examine the order of appearance of listings matching the search criteria.
3. Compare relative positions:
   - Between newer listings (published today) and older listings (published yesterday).
   - Between equally new listings with different prices.
   - Between equally new listings with identical prices and differing ratings.

# Expected Result
1. The default sorting prioritizes the newest listings first (Listing A, C, D appear before Listing B).
2. For listings with matching recency, lower price takes precedence (Listings C and D appear before Listing A).
3. For listings with matching recency and identical price, higher rating takes precedence (Listing D appears before Listing C).
4. The verified default order is: Listing D, then Listing C, then Listing A, then Listing B.

# Notes
- Requirement: `الترتيب الافتراضي: الأحدث، السعر، التقييم`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
