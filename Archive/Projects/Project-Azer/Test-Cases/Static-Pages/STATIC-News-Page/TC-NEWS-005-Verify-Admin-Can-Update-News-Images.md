---
tc_id: TC-NEWS-005
title: Verify Admin Can Update News Images (Main and Gallery)
priority: Medium
status: Ready
type: Functional
linked_requirement:
tags:
  - test-case
  - news-admin
  - functional
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| New Main Image | new_cover.jpg |
| New Gallery Image | new_gallery_1.jpg |
| Remove Image | existing_image_2.jpg |

# Preconditions
- The administrator is logged into the admin dashboard.
- A news item with existing images exists.
- The administrator is on the "Edit News" form.

# Steps
1. Upload a new image to the "Main Image" field to replace the current one.
2. Upload an additional image to the "Gallery" section.
3. Click the "Remove" or "Delete" icon on one of the existing gallery images.
4. Click "Save".

# Expected Result
- The new main image is set as the cover image.
- The gallery is updated: one new image added, one existing image removed.
- The client-facing news detail page reflects the updated images and gallery layout.
- Old deleted files are handled correctly by the server (removed or marked as deleted).

# Notes
- Verify the 'remove_image' toggle logic from the script.

# Attachments
