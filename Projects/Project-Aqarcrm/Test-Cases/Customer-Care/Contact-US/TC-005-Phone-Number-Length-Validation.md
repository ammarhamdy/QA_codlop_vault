---
tc_id: TC-Contact-US-005
title: Verify phone number length validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-002-Contact-US
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
1. Enter a phone number shorter than the minimum allowed length.  
2. Enter a phone number with the valid allowed length.  
3. Enter a phone number longer than the maximum allowed length.
4. . Click **Send Message** after each attempt.
# Expected Result
-The system accepts a valid phone number, rejects phone numbers outside the allowed length, displays appropriate validation messages for invalid lengths, and allows form submission only when the phone number is valid.
# Notes

# Attachments
