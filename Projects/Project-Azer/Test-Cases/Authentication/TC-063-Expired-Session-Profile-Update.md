---
tc_id: TC-063
title: Profile Update with Expired Session
priority: High
status: Ready
type: Security
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - security
  - session
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| New Email      | expired.session@example.com|

# Preconditions
- User is logged in.
- The session has expired (e.g., by waiting for timeout or manually deleting the session cookie).

# Steps
1. Navigate to the User Profile section.
2. Update the Email Address.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- The system should reject the request with an authentication error (e.g., 401 Unauthorized).
- The user should be redirected to the login page.
- No profile changes are saved.

# Notes
- Verifies that expired sessions cannot be used to modify profile data.
