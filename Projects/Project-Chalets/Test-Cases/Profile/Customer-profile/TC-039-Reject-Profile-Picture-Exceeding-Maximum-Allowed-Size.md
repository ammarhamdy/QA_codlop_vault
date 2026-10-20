---
tc_id: TC-Info-039
title: Verify Rejecting a Profile Picture Exceeding the Maximum Allowed Size
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
| Field         | Value                                                      |
| ------------- | ---------------------------------------------------------- |
| Profile_photo | `large_profile.jpg` — Size exceeds the configured maximum. |
|               |                                                            |

# Preconditions
-Customer is logged in. A maximum image size has been configured.
# Steps
1. Open Edit Profile. 
2. Tap the profile picture upload icon. 
3. Select `large_profile.jpg`. 
4. Observe the response.
# Expected Result
- The oversized image is rejected. & A clear file-size validation message appears.
- The oversized image is not saved. Maximum size requires confirmation.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*