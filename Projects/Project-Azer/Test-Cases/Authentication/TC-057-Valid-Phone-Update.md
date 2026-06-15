---
tc_id: TC-057
title: Successful Phone Number Update with Valid Number
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - phone-update
run_result: pass
---

# Test Data
| Field          | Value               |
| -------------- | ------------------- |
| Current Phone   | +966500000001      |
| New Phone       | +966500000002      |

# Preconditions
- User is logged in and on their profile page.
- The phone number `+966500000001` is registered and active.
- The phone number `+966500000002` is not currently registered.

# Steps
1. Navigate to the User Profile section.
2. Locate the Phone Number field.
3. Enter `+966500000002` into the Phone Number field.
4. Click the "Save" or "Update Profile" button.

# Expected Result
- A success message is displayed.
- The phone number displayed in the profile section is updated to `+966500000002`.
- After logging out, the user should be able to log in using the new phone number (if phone login is supported).

# Notes
- Verifies basic positive flow for phone number updates.
