---
tc_id: TC-A-prop-038
title: Verify uploading additional property images and maximum upload limit
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-009-Properties
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin on add broker form on Images &Attachments step.
# Steps
1. Upload valid additional property images.  
2. Verify the images are uploaded successfully.  
3. Continue uploading until reaching 10 images.  
4. Try to upload an 11th image
# Expected Result
-System should upload and display the selected images successfully, allow uploading up to 10 additional images only, and prevent uploading more than 10 images with an appropriate validation message.
# Notes

# Attachments
