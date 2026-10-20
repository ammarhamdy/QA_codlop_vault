---
tc_id: TC-Info-041
title: Verify Removing an Existing Customer Profile Picture
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
| Field                  | Value       |
| ---------------------- | ----------- |
| Existing Profile_photo | profile.jpg |
|                        |             |

# Preconditions
-Customer is logged in, has an existing profile picture, and the approved design supports image removal.
# Steps
1. Open My Profile & Tap Edit Profile. 
2. Tap the profile picture. 
3. Select Remove or Delete. 

# Expected Result
- The profile picture is removed successfully & The default avatar appears instead of the removed image.
- The removed image is no longer displayed after reopening My Profile. This case applies only if image removal is supported
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*