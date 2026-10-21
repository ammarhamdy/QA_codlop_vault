---
tc_id: TC-NEWS-002
title: Verify Admin Can Add a New News Item with Only Mandatory Data
priority: Medium
status: Ready
type: Functional
linked_requirement:
tags:
  - test-case
  - news-admin
  - functional
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | Quick Update |
| Content | <p>Short news update without images or videos.</p> |
| Main Image | [Empty] |
| Gallery Images | [Empty] |
| Has Video | No |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page.

# Steps
1. Enter the valid title from the test data.
2. Enter the valid content from the test data.
3. Leave the image upload fields empty.
4. Ensure "Has Video" is disabled.
5. Click "Save" or "Submit".

# Expected Result
- The news item is created successfully.
- A success message is displayed.
- The system handles the absence of optional assets (images/video) gracefully.
- On the client side, a default placeholder image is displayed if no main image was provided.

# Notes
- Check that the system doesn't crash when optional fields are null.

# Attachments
