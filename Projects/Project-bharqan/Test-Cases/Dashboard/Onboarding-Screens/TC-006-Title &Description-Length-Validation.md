---
tc_id: TC-Onboarding-006
title: Verify Title and Description Length Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-012-Bharqan-Dashboard
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on Onboarding screen.
# Steps
1. Open the Add/Edit screen.
2. Enter a title and description shorter than the minimum allowed length, then submit.
3. Enter a title and description longer than the maximum allowed length, then submit.
4. Verify the system prevents submission or displays a validation message.
5. Enter a title and description with the maximum allowed length.
6. Submit the form
# Expected Result
-The system rejects values below the minimum or above the maximum allowed length and displays appropriate validation messages.
-The form is submitted successfully when the title and description are within the allowed length limits, including the maximum allowed length.
# Notes

# Attachments
