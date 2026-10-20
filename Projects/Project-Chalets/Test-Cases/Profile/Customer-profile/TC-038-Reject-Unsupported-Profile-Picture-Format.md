---
tc_id: TC-Info-038
title: Verify Rejecting an Unsupported Profile Picture Format
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field         | Value                         |
| ------------- | ----------------------------- |
| Profile_photo | `profile.pdf` — PDF — 500 KB. |
|               |                               |

# Preconditions
-Customer is logged in and Edit Profile is open.
# Steps
1. Tap the profile picture upload icon. 
2. Attempt to select `profile.pdf`. 
3. Attempt to upload the file if selection is allowed. 
4. Observe the response.
# Expected Result
- The file is rejected & An appropriate validation message appears.
- The existing profile picture remains unchanged. Allowed formats require confirmation.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*