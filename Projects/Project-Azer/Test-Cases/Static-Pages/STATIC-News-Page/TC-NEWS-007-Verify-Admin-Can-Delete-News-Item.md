---
tc_id: TC-NEWS-007
title: Verify Admin Can Delete a News Item
priority: High
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
| Target News Item | "Latest Company News 2026" |

# Preconditions
- The administrator is logged into the admin dashboard.
- The target news item exists in the list.

# Steps
1. Locate the target news item in the admin list.
2. Click the "Delete" button.
3. When the confirmation prompt appears, click "Confirm" or "Yes".

# Expected Result
- A success message (e.g., "News item deleted successfully") is displayed.
- The news item is immediately removed from the admin panel list.
- The news item is no longer accessible on the client-facing news page (404 or redirect).
- The associated record is removed from the database.

# Notes
- Verify if associated images/videos are also cleaned up from the server to prevent storage waste.

# Attachments
