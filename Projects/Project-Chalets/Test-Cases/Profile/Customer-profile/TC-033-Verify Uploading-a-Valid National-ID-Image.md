---
tc_id: TC-Info-033
title: Verify Uploading a Valid National ID Image
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
| Field    | Value          |
| -------- | -------------- |
| ID Photo | `valid_id.jpg` |
|          |                |

# Preconditions
-Customer is logged in. Edit Profile is accessible. National ID image upload is enabled.
# Steps
1. Open My Profile.
2. Tap Edit Profile. 
3. Tap the National ID image upload field. 
4. Select `national_id_front.jpg`. 
5. Tap Save. 
# Expected Result
The image is uploaded successfully and its preview or filename is displayed. The Save operation succeeds. The uploaded image remains associated with the same customer account after reopening Edit Profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*