---
tc_id: TC-Info-035
title: Verify Rejecting an Image Exceeding the Maximum Allowed Size
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
| Field | Value                                |
| ----- | ------------------------------------ |
| File  | `national_id_large.jpg` — `L + 1 MB` |
|       |                                      |

# Preconditions
-customer is logged in. A maximum file size has been confirmed for customer National ID images.
# Steps
1. Open Edit Profile.
2. Tap the image upload field. 
3. Select `national_id_large.jpg`.
4. Attempt to upload it.
5. Observe the response. 
# Expected Result
-The oversized file is rejected. A clear size validation message is displayed. The oversized image is not saved. Any previously saved image remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*