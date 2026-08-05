---
tc_id: TC-A-Off-014
title: Verify Description Field Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Add Property Offer form is open.
# Steps
1. Leave the **Description** field empty and save the offer.  
2. Enter a description within the allowed maximum length and save.  
3. Enter a description exceeding the maximum allowed length.
# Expected Result
-The Description field is optional. The offer can be saved when the field is empty or contains a valid description within the allowed limit. The system rejects or prevents input exceeding the maximum allowed length.
# Notes

# Attachments
