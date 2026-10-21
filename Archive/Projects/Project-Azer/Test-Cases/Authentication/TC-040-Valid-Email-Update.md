---
tc_id: TC-040
title: Successful Email Update with Valid New Email
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - email-update
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
- The email `new.valid.email@example.com` is not currently registered.

# Steps
1. Log in to the application using `existing.user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter `new.valid.email@example.com` into the Email Address field.
5. Click the "Save" or "Update Profile" button.

# Expected Result
- A success message is displayed (e.g., "Profile updated successfully.").
- The email address displayed in the profile section is updated to `new.valid.email@example.com`.
- After logging out and attempting to log in with `existing.user@example.com`, the login should fail.
- After logging out and attempting to log in with `new.valid.email@example.com`, the login should succeed.
- (Optional, depending on implementation) An email verification request is sent to `new.valid.email@example.com`.

# Notes
- Assumes standard email validation rules: requires a local part, '@' symbol, and a valid domain/TLD. Max length 254 characters. Case-insensitive comparison. Trims leading/trailing spaces.
