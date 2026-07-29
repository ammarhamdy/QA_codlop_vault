---
tc_id: TC-Contact-US-008
title: Verify message field length validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Contact Us page
# Steps
1. Enter a message with a valid length.
2. Enter a message exceeding the maximum allowed length.
3. Click **Send Message** after each attempt.
# Expected Result
-The message field accepts text within the allowed length and validates input that exceeds the maximum limit.
# Notes

# Attachments
