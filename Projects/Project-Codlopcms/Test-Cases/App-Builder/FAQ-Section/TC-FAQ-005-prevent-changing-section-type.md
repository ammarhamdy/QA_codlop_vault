---
tc_id: TC-FAQ-005
title: Prevent Administrator from Changing the FAQ Section Type
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-003
tags:
  - test-case
  - faq
  - type
  - validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Attempted `type` value | Any non-faq value (e.g., banner) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Attempt to change the FAQ section `type` value to a value other than `faq`.
2. Save the section.
3. Retrieve the generated JSON configuration.

# Expected Result
- The administrator cannot change the `type` value of the FAQ section to another section type.
- The generated JSON still contains `"type": "faq"` for the FAQ section.

# Notes

# Attachments