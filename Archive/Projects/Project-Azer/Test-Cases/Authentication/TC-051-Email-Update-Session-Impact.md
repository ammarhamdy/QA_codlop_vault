---
tc_id: TC-051
title: Verify Session Validity After Email Change
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - email-update
  - session
run_result: pass
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| Current Email  | existing.user@example.com  |
| New Email      | new.valid.email@example.com|

# Preconditions
- User is logged in and on their profile page.
- The email `existing.user@example.com` is registered and active.

# Steps
1. Navigate to the User Profile section.
2. Update the Email Address to `new.valid.email@example.com`.
3. Click the "Save" or "Update Profile" button.
4. Observe the current session state (stay on the page or navigate to another section).

# Expected Result
- The user should remain logged in after the email update.
- The session should continue to be valid for the current authenticated user.
- (Optional) If the system requires re-authentication after sensitive changes, the user should be prompted to log in again using the NEW email.

# Notes
- This test verifies that updating the email address does not inadvertently invalidate the current session or cause unexpected logouts.
