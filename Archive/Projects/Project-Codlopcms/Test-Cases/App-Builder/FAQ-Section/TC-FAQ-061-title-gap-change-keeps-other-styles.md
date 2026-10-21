---
tc_id: TC-FAQ-061
title: Verify Changing Title Gap Does Not Modify Other Style Properties
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-025
tags:
  - test-case
  - faq
  - style
  - titleGap
  - isolation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap (before) | 8 |
| style.radius | 12 |
| style.titleGap (after) | 16 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.titleGap: 8` and `style.radius: 12` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the title gap value to 16.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the title gap does not modify other FAQ section style properties.
- The generated JSON contains `style.titleGap: 16` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments