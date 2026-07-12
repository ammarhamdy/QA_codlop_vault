---
tc_id: TC-CAT-CFG-001
title: Configure section title with UTF-8 and RTL text
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-004
tags:
  - test-case
  - admin-panel
  - configuration
run_result: pass
---

# Test Data
| Field              | Value                  |
| ------------------ | ---------------------- |
| Title (Latin)      | "Featured Categories"  |
| Title (Arabic RTL) | "التصنيفات المميزة"    |
| Title (mixed)      | "Categories التصنيفات" |

# Preconditions
- A Categories section exists in editing mode.

# Steps
1. Set the section title to "Featured Categories" and save.
2. Edit the section and change the title to "التصنيفات المميزة".
3. Save and inspect the generated JSON.
4. Edit the section again and set the title to a mixed-script string.
5. Save and re-inspect the JSON.

# Expected Result
- All three title values are accepted and persisted.
- The generated JSON contains the exact title string with correct encoding.
- The title is rendered correctly on the mobile app (displayed as entered).

# Notes
# Attachments
