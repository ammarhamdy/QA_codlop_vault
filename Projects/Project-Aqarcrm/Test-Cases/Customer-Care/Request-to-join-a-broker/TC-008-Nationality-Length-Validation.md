---
tc_id: TC-Broker-Req-008
title: Verify Nationality field length validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004-Broker-Join-Request
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User opens Join as a Broker form.
# Steps
1. Enter a nationality within the allowed length.
2. Verify the value is accepted.
3. Enter a nationality exceeding the maximum allowed length.
4. Submit the form
# Expected Result
-The Nationality field accepts input within the allowed length and rejects values exceeding the defined limit.
# Notes

# Attachments
