---
tc_id: TC-062
title: Unauthorized Profile Modification Attempt
priority: High
status: Ready
type: Security
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - security
  - authorization
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| Victim User ID | 123                        |
| Attacker Token | Valid token for User 456   |

# Preconditions
- Two users exist: User 123 and User 456.
- Attacker is logged in as User 456.

# Steps
1. Capture a legitimate profile update request for User 456.
2. Modify the request to target User 123's profile (e.g., by changing a user ID in the URL or payload).
3. Send the modified request.

# Expected Result
- The system should return an authorization error (e.g., 403 Forbidden).
- The profile of User 123 must not be modified.
- An error message "You are not authorized to perform this action" is returned.

# Notes
- Verifies that users can only modify their own profiles (Broken Object Level Authorization - BOLA).
