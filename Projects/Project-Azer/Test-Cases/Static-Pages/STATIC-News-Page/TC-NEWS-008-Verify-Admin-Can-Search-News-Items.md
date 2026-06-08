---
tc_id: TC-NEWS-008
title: Verify Admin Can Search for News Items by Keyword
priority: Medium
status: Ready
type: Functional
linked_requirement:
tags:
  - test-case
  - news-admin
  - functional
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Search Keyword (Title) | Opening |
| Search Keyword (Content) | city center |
| Target News Item | "Grand Opening of the New Branch" |

# Preconditions
- The administrator is logged into the admin dashboard.
- The target news item with the specified title/content exists.
- The administrator is viewing the news management list.

# Steps
1. Enter "Opening" in the search field and press Enter.
2. Clear the search, enter "city center" and press Enter.

# Expected Result
- After Step 1, the list filters to show only news items containing "Opening" in the title or content.
- After Step 2, the list filters to show news items containing "city center" in the content.
- The target news item is correctly displayed in both search results.

# Notes
- Search should be case-insensitive.

# Attachments
