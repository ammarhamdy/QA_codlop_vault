---
tc_id: TC-060
title: Attempt to Update Phone to an Already Registered Number
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
  - duplicate
---

# Test Data
| Field          | Value               |
| -------------- | ------------------- |
| Current Phone   | +966500000001      |
| Registered Phone| +966500000002      |

# Preconditions
- Two active accounts exist with phone numbers `+966500000001` and `+966500000002`.
- User is logged in as `+966500000001`.

# Steps
1. Navigate to the User Profile section.
2. Enter `+966500000002` into the Phone Number field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating the phone number is already in use.
- The profile update fails.

# Notes
- Ensures phone numbers remain unique.
