---
tc_id: TC-WebsiteB-013
title: Validate Supported Banner Image File Type
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
1. Upload a banner image with a supported file type.  
2. Verify that the image is accepted.  
3. Upload a banner image with an unsupported file type.
# Expected Result
-Supported image file types should be accepted successfully, while unsupported file types should be rejected and an appropriate validation message should be displayed.
# Notes

# Attachments
