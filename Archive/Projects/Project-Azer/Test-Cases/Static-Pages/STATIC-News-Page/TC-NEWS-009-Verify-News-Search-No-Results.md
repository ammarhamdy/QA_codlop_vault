---
tc_id: TC-NEWS-009
title: Verify News Search with No Matching Results
priority: Low
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
| Invalid Keyword | xyzabc123 |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is viewing the news management list.

# Steps
1. Enter "xyzabc123" in the search field and press Enter.
2. Observe the UI response.

# Expected Result
- The news list is empty.
- A "No news items found matching your search" message is displayed to the user.
- The UI does not crash or show a blank white page.

# Notes
- Verify that the "Clear Search" button restores the full list.

# Attachments
