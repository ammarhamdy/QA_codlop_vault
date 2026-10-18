---
tc_id: TC-SRCH-017
title: Verify Featured Listings Appear First Only When Matching Search Criteria
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Listing | City | Featured? | Matches Query (City: الرياض)? |
| ------- | ---- | --------- | ----------------------------- |
| Chalet A (Featured Match) | `الرياض` | Yes | Yes |
| Chalet B (Standard Match) | `الرياض` | No | Yes |
| Chalet C (Featured Non-Match) | `جدة` | Yes | No |

# Preconditions
1. Chalets A, B, and C are published with active lessors and valid subscriptions.
2. User performs a search explicitly for City: `الرياض`.

# Steps
1. Execute search query with filter City = `الرياض`.
2. Inspect the search results feed.
3. Verify the position of Chalet A relative to Chalet B.
4. Verify whether Chalet C is displayed anywhere in the results.

# Expected Result
1. Chalet A (Featured in Riyadh) is prioritized and placed at the very top of the results before Chalet B.
2. Chalet B (Standard in Riyadh) is rendered after Chalet A.
3. Chalet C (Featured in Jeddah) does NOT appear in the search results at all.
4. Featured listings are prioritized only when they genuinely match all search criteria (`المميزة أولًا داخل النتائج المطابقة فقط`).

# Notes
- Requirement: `قواعد البحث و الفلاتر: المميزة أولًا داخل النتائج المطابقة فقط.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
