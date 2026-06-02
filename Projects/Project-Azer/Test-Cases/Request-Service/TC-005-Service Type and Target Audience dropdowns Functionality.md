---
tc_id: TC-005
title: Verify Service Type and Target Audience dropdowns work correctly
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
---

# Test Data
| Field           | Value           |
| --------------- | --------------- |
| Service Type    | "Select Option" |
| Target Audience | "Select Option" |

# Preconditions
-User is on the Service Request page
-Service Type and Target Audience dropdowns are visible and enabled
# Steps
1. Navigate to the 'Service Request' page.
2. Fill in valid data for Name, Email Address, phone ,....
3. Select options for Service Type &Target Audience.
  4.Click Send.
# Expected Result
- Selected values are displayed correctly in both dropdowns
- Values are saved successfully with the request
- No free text input is allowed in dropdown fields
# Notes

# Attachments
