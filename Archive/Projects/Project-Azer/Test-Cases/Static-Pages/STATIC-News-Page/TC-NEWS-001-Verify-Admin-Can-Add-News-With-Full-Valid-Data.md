---
tc_id: TC-NEWS-001
title: Verify Admin Can Add a New News Item with Full Valid Data
priority: High
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
| Title | Grand Opening of the New Branch |
| Content | <p>We are excited to announce the opening of our new branch in the city center.</p> |
| Main Image | valid_cover.jpg |
| Gallery Images | img1.jpg, img2.jpg, img3.jpg |
| Has Video | Yes |
| Video File | promo_video.mp4 |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page.

# Steps
1. Enter the valid title from the test data.
2. Enter the HTML content from the test data.
3. Upload the main image file.
4. Upload multiple gallery images.
5. Toggle "Has Video" to enabled.
6. Upload the video file.
7. Click "Save" or "Submit".

# Expected Result
- A success notification (e.g., "News item created successfully") is displayed.
- The new news item appears in the admin news list with the correct title.
- The item is successfully saved in the database with all associated assets.
- The news item is visible on the client-facing news page with the cover image and video.

# Notes
- Verify that all gallery images are uploaded and linked correctly.

# Attachments
