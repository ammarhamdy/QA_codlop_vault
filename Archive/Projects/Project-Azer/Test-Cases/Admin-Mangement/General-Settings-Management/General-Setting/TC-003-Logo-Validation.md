---
tc_id: TC-003
title: Verify Logo Upload Validation Rules.
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-General Settings Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on General Settings page
# Steps
1. Navigate to the Genera; Settings page.
2. Upload a valid logo image with a supported file type and size.
 3. Verify that the image preview is displayed.
4. Upload an unsupported file type.
5. Upload an image that exceeds the maximum allowed size.
6.  Attempt to upload multiple images at once.
# Expected Result
The system accepts only one valid logo image and rejects unsupported file types, oversized files, or multiple uploads with appropriate validation messages.
# Notes

# Attachments
