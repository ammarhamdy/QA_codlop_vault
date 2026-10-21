---
tc_id: TC-FAQ-040
title: Verify Changing Background Color Does Not Modify Other Style Properties
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-018
tags:
  - test-case
  - faq
  - style
  - background
  - isolation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background (before) | #f4f6f8 |
| style.radius | 12 |
| style.background (after) | #ffffff |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.background: "#f4f6f8"` and `style.radius: 12` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the background color to #ffffff.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the background color does not modify other FAQ section style properties.
- The generated JSON contains `style.background: "#ffffff"` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments