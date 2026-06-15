---
tc_id: TC-039
title: Profile Update with Very Large Payload
priority: Low
status: Ready
type: Security
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - edge-case
  - payload-size
run_result: pass
---

# Test Data
| Field          | Value                                                                                                                                                                                                                                                                                    |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| New Name       | [A string of 10,000 characters]                                                                                                                                                                                                                                                        |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Enter an extremely large string (e.g., 10,000 characters) into the Full Name field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- The system should handle the large payload gracefully.
- It should either:
    - Reject the request with a "Payload Too Large" (413) error.
    - Trim the input to the maximum allowed length.
    - Display a validation error indicating the name is too long.
- The system must not crash or encounter a Denial of Service (DoS) condition.

# Notes
- Verifies the system's resilience against large input payloads.
