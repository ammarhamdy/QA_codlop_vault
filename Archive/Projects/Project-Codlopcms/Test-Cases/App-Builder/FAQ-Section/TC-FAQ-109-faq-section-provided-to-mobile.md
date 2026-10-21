---
tc_id: TC-FAQ-109
title: Verify FAQ Section Is Provided to the Mobile App for Rendering
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-001
tags:
  - test-case
  - faq
  - mobile
  - rendering
  - regression
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Section | saved FAQ section with at least one FAQ item |

# Preconditions
- Administrator has created and saved an FAQ section with at least one FAQ item.

# Steps
1. Save the FAQ section in the App Builder.
2. Provide the saved FAQ section configuration to the mobile application.
3. Refresh the mobile application.
4. Navigate to the home screen and locate the FAQ section.

# Expected Result
- The saved FAQ section is successfully provided to the mobile application.
- The mobile application renders the FAQ section on the home screen.

# Notes

# Attachments