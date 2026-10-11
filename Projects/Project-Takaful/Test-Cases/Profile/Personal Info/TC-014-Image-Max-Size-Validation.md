---
tc_id: TC-Info-014
title: Verify that an image exceeding the allowed size is rejected
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Select an image exceeding the allowed size.
# Expected Result
-The image is rejected with an appropriate validation message, the profile is not updated with the invalid image, and the previously saved profile picture remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*