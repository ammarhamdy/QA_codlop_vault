---
tc_id: TC-NEWS-014
title: Verify File Upload Validation for News Images and Videos
priority: Medium
status: Ready
type: Functional
linked_requirement: 
tags:
  - test-case
  - news-admin
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Invalid Image Format | news_image.txt |
| Invalid Video Format | news_video.exe |
| Valid Image | image.png |
| Valid Video | video.mp4 |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page.

# Steps
1. Attempt to upload "news_image.txt" as the main image.
2. Attempt to upload "news_video.exe" as the video file.
3. Attempt to upload "image.png" and "video.mp4".

# Expected Result
- In Step 1, an error message (e.g., "Invalid image format. Please upload JPG or PNG") is displayed.
- In Step 2, an error message (e.g., "Invalid video format. Please upload MP4") is displayed.
- In Step 3, the files are accepted and uploaded successfully.

# Notes
- Verify both extension check and MIME type check.

# Attachments
