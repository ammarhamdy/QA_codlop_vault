---
tc_id: TC-NEWS-004
title: Verify Admin Can Edit News Title and Content
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
| Original Title | Old News Title |
| Original Content | <p>Old content</p> |
| Updated Title | Updated News Title |
| Updated Content | <p>Newly updated content for the news item.</p> |

# Preconditions
- The administrator is logged into the admin dashboard.
- A news item exists in the system.
- The administrator is on the "Edit News" form for that item.

# Steps
1. Modify the title from "Old News Title" to "Updated News Title".
2. Modify the content from "<p>Old content</p>" to the updated content.
3. Click "Save" or "Update".

# Expected Result
- A success message is displayed.
- The news item in the admin list reflects the updated title.
- The client-facing news page renders the updated title and content immediately after refresh.
- Database values are updated correctly.

# Notes
- Verify that editing title/content does not accidentally remove existing images or videos.

# Attachments
