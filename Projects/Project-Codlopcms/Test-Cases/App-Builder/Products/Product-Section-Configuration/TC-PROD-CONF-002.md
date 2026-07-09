---
tc_id: TC-PROD-CONF-002
title: Verify Section Title Supports UTF-8 and RTL Text (e.g., Arabic)
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-004
tags:
  - test-case
  - configuration
  - title
  - rtl
  - utf8
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | المنتجات |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section exists and is open for editing.

# Steps
1. Enter the Arabic title "المنتجات" in the title field.
2. Save the section.
3. Generate and inspect the JSON output.
4. View the section on the mobile app after publishing.

# Expected Result
- The title is saved successfully.
- The JSON contains the `title` field with the exact Arabic text.
- The mobile app renders the Arabic title correctly (RTL support).

# Notes
- Also test with other UTF-8 scripts (Cyrillic, CJK, etc.) for completeness.

# Attachments
