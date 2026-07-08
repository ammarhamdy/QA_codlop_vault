---
test_case_id: TC-DYN-BAN-SEC-035
title: "Verify Admin Panel Image Upload/URL Validation"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-004.2, REQ-DYN-BAN-SEC-004.3"
tags:
  - banner
  - admin-panel
  - validation
  - negative
---

## Description
This test case verifies that the Admin Panel validates image uploads/URLs for banner items based on file type, size limits, and validity.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.
- Image file size limits and allowed formats (e.g., max 500KB, JPG, PNG, WEBP) are configured.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit, and attempt to add/edit a banner item.
3. **Invalid File Type:** Attempt to upload a non-image file (e.g., a `.txt` or `.pdf` file).
4. **Over Size Limit:** Attempt to upload an image file exceeding the maximum allowed size (e.g., 1MB if limit is 500KB).
5. **Invalid URL:** Attempt to input an invalid image URL (e.g., "htp://bad-url.com/image.jpg", or a non-existent URL).
6. For each attempt, try to save the banner item/section.

## Expected Result
- The Admin Panel displays appropriate validation errors for invalid file types, oversized files, and invalid URLs.
- The Admin Panel prevents saving the banner item/section until valid image data is provided.
