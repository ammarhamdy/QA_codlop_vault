---
tc_id: TC-059
title: Attempt to Update Phone with Invalid Format (Non-Numeric)
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
run_result: pass
---

# Test Data
| Field          | Value               |
| -------------- | ------------------- |
| Current Phone   | +966500000001      |
| Invalid Phone   | +966500abc001      |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Enter `+966500abc001` into the Phone Number field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating an invalid phone number format (e.g., "Phone number must contain only digits").
- The profile update fails.

# Notes
- Verifies rejection of alphabetic characters in the phone field.
