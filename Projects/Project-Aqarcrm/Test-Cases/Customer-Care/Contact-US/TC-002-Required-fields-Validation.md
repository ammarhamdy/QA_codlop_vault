---
tc_id: TC-Contact-US-002
title: Verify required fieldS validation
priority:
  - High
  - Medium
  - Low
status:
  - Draft
  - Ready
type:
  - Functional
  - Regression
  - API
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Contact Us page.
# Steps
1. Navigate to the 'Contact Us' page.
2. Attempt to click the "Submit" button with all required fields left empty.
3. Verify that validation error messages are displayed for all empty required fields (Name, Email , Phone Number, Message ,Subject).
4. Fill in all fields except one, and attempt to submit. Repeat for each required field, verifying specific error messages.
# Expected Result
- For each empty required field, an error message (e.g., "Name is required") should be displayed.
- The form submission should be prevented.
- The user should remain on the 'Contact Us' page.
# Notes

# Attachments
