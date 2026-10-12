---
tc_id: TC-WebsiteB-014
title: Validate Banner Image File Size
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-016-Website-Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Banner page.
# Steps
1. Upload an image within the allowed maximum file size.  
2. Verify that the image is accepted.  
3. Upload an image exceeding the maximum allowed file size.
# Expected Result
-An image within the allowed size should be accepted successfully, while an image exceeding the maximum allowed size should be rejected and an appropriate validation message should be displayed.
# Notes

# Attachments
