---
tc_id: TC-SRCH-005
title: Verify Search Results Limit Initial Page to Exactly 20 Results
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
| Total Matching Listings in DB | `35` active listings |
| Expected Initial Page Size | `20` results |

# Preconditions
1. Database contains at least 35 published listings matching the chosen search parameters.
2. User has not yet scrolled the results view.

# Steps
1. Execute a search for listings in the target city.
2. Wait for the initial search results page to finish loading.
3. Count the total number of listing cards rendered on the initial screen without initiating scroll.

# Expected Result
1. The initial search view renders exactly 20 listing cards.
2. The remaining 15 listings are not loaded or appended until user scroll action triggers pagination.

# Notes
- Requirement: `قواعد البحث: 20 نتيجة للصفحة, المزيد يُحمّل بالتمرير.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
