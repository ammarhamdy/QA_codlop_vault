---
tc_id: TC-010
title: Verify System Behavior on Submission Failure
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
---

# Test Data
| Field           | Value                              |
| --------------- | ---------------------------------- |
| Name            | Fatma                              |
| Phone           | 551234567                          |
| Email           | Fatma@gmail.com                    |
| Service Type    | Workshops                          |
| Target Audience | Government agencies                |
| Request Details | Need to inquire about this service |

# Preconditions
- User is on the Service Request page
- System/API is assumed to have a failure (server error / network issue)
# Steps
1. Navigate to the  'Service Request' page.
2. Fill all fields with valid data.
3. click submit
# Expected Result
- The system displays an error message (e.g. "Submission failed, please try again")
- No partial or duplicate data should be stored
# Notes

# Attachments
