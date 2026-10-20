---
tc_id: TC-Info-037
title: Verify Uploading a Valid Customer Profile Picture
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
| Field         | Value                      |
| ------------- | -------------------------- |
| Profile_photo | `profile.jpg` — JPG — 1 MB |
|               |                            |

# Preconditions
-Customer is logged in and Edit Profile screen is open.
# Steps
1. Navigate to My Profile & Tap Edit Profile. 
2. Tap the profile picture upload icon. 
3. Select `profile.jpg`.
4.  Tap Save. 
# Expected Result
- The selected image is uploaded successfully & The image preview displays correctly. 
- The profile is saved successfully &The new profile picture appears after reopening My Profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*