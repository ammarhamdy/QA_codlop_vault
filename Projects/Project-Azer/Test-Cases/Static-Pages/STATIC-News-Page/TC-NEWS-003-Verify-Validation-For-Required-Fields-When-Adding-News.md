---
tc_id: TC-NEWS-003
title: Verify Validation for Required Fields when Adding News
priority: High
status: Ready
type: Functional
linked_requirement:
tags:
  - test-case
  - news-admin
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario 1 - Title | [Empty] |
| Scenario 1 - Content | [Empty] |
| Scenario 2 - Title | Valid Title |
| Scenario 2 - Content | [Empty] |
| Scenario 3 - Title | [Empty] |
| Scenario 3 - Content | Valid Content |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page.

# Steps
1. Leave both Title and Content fields empty and click "Save".
2. Enter a valid title, leave content empty, and click "Save".
3. Leave title empty, enter valid content, and click "Save".

# Expected Result
- In all three scenarios, form submission is blocked.
- Appropriate error messages (e.g., "Title is required", "Content is required") are displayed under the respective fields.
- No news item is created in the database.

# Notes
- Verify both front-end (HTML5/JS) and back-end validation.

# Attachments
