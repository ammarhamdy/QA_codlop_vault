---
tc_id: TC-FAQ-052
title: Verify Changing Padding Does Not Modify Other Style Properties
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-022
tags:
  - test-case
  - faq
  - style
  - padding
  - isolation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.padding (before) | 16 |
| style.shadow | 0 2 4 rgba(0,0,0,0.1) |
| style.padding (after) | 24 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.padding: 16` and the specified shadow exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the padding value to 24.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the section padding does not modify other FAQ section style properties.
- The generated JSON contains `style.padding: 24` while the other style values (e.g., the shadow value) remain unchanged.

# Notes

# Attachments