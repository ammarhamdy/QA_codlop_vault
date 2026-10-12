---
tc_id: TC-DASH-EMP-EDIT-008
title: Update Profile Photo
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                |
| ------------- | -------------------- |
| Profile Photo | new-profile.png      |
| Name          | John Doe             |
| Email         | john.doe@example.com |
| Phone         | +15550123            |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with a profile photo is available.
- A new profile photo file that satisfies the configured file rules is available.
- The employee edit form is displayed.

# Steps
1. Provide a new profile photo that satisfies the configured file rules.
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system validates the new profile photo.
- The system updates the employee's profile photo when valid.

# Notes
- Applies to AC-08 — Update Profile Photo.

# Attachments