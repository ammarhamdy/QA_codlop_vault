---
tc_id: TC-Info-034
title: Verify Rejecting an Unsupported File Format
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
| Field | Value                             |
| ----- | --------------------------------- |
| File  | `national_id.exe` — EXE — 100 KB. |
|       |                                   |

# Preconditions
-Customer is logged in and Edit Profile is open.
# Steps
1. Tap the National ID image upload field. 
2. Attempt to select `national_id.exe`.
3. If the file picker allows selection, attempt to upload it. 
4. Observe the response.
# Expected Result
- The unsupported file is rejected or cannot be selected. An appropriate validation message is displayed.
- No unsupported file is saved as the customer's National ID image.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*