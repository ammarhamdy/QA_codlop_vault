---
tc_id: TC-Info-040
title: Verify Canceling Profile Picture Selection
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
| Field                  | Value              |
| ---------------------- | ------------------ |
| Existing Profile_photo | `old_profile.jpg`. |
|                        |                    |

# Preconditions
-Customer is logged in and Edit Profile is open.
# Steps
1. Tap the profile picture upload icon.
2. Open the image picker. 
3. Cancel image selection without choosing a file. 
4. Return to Edit Profile.
# Expected Result
- The image picker closes & No new image is uploaded. 
- The existing profile picture remains unchanged &The customer can continue editing the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*