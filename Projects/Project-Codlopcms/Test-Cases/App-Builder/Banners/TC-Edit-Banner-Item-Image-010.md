---
test_case_id: TC-DYN-BAN-SEC-010
title: Verify Editing an Existing Banner Item Image
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-001.5, REQ-DYN-BAN-SEC-004.1
tags:
  - banner
  - admin-panel
  - positive
run_result: pass
---

## Description
This test case verifies that a business user can successfully edit the image of an existing banner item within a banner section in the Admin Panel.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with at least one banner item.
- A new valid image URL/file is available for updating.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate an existing banner item and click on its "Edit" control.
4. Change the image by providing a new valid image URL or uploading a new image file.
5. Save the banner section changes.
6. Verify the updated image for the banner item in the Admin Panel.
7. Refresh the Mobile Application and verify the banner item displays the new image.

## Expected Result
- The banner item's image is successfully updated in the Admin Panel.
- The Mobile Application displays the updated image for the banner item after refresh.
---
