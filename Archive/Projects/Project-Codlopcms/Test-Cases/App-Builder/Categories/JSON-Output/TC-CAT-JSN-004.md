---
tc_id: TC-CAT-JSN-004
title: "JSON reflects latest saved configuration after edit"
priority: High
status: Draft
type: API
linked_requirement: CAT-REQ-037
tags:
  - test-case
  - json
  - backend
---

# Test Data
| Field | Value |
| ----- | ----- |
| Initial title | "Old Title" |
| Updated title | "New Title" |

# Preconditions
- A Categories section exists with title "Old Title" and is saved.

# Steps
1. Retrieve the current JSON — verify title is "Old Title".
2. Edit the section and change the title to "New Title". Save.
3. Retrieve the JSON again.
4. Verify the title is now "New Title".

# Expected Result
- After saving, the JSON immediately reflects the updated value.
- No manual additional step is required for the JSON to be updated (pending clarification on save vs. publish distinction).

# Notes
# Attachments
