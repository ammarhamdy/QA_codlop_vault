---
tc_id: TC-038
title: Simultaneous Update of All Profile Fields
priority: Medium
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - edge-case
run_result: pass
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| New Name       | Full Name Updated          |
| New Email      | all.fields@example.com     |
| New Phone      | +966500000003              |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Update the Full Name to `Full Name Updated`.
3. Update the Email Address to `all.fields@example.com`.
4. Update the Phone Number to `+966500000003`.
5. Click the "Save" or "Update Profile" button.

# Expected Result
- A success message is displayed.
- All three fields are updated correctly in the profile and the database.

# Notes
- Verifies that the system can handle multiple field updates in a single request.
