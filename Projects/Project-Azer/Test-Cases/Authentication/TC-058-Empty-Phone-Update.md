---
tc_id: TC-058
title: Attempt to Update Phone with Empty Value
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - phone-update
  - validation
---

# Test Data
| Field          | Value               |
| -------------- | ------------------- |
| Current Phone   | +966500000001      |
| New Phone       |                     |

# Preconditions
- User is logged in and on their profile page.
- The phone number `+966500000001` is registered and active.

# Steps
1. Navigate to the User Profile section.
2. Clear the Phone Number field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating that the phone number is a required field.
- The phone number in the profile remains `+966500000001`.
- The profile update fails.

# Notes
- Verifies that phone number is a mandatory field.
