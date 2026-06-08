---
tc_id: TC-NEWS-015
title: Verify File Size Limits for News Uploads
priority: Low
status: Ready
type: Functional
linked_requirement:
tags:
  - test-case
  - news-admin
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Oversized Image | 50MB .jpg file |
| Oversized Video | 2GB .mp4 file |

# Preconditions
- The administrator is logged into the admin dashboard.
- The administrator is on the "Add News" page.

# Steps
1. Attempt to upload the 50MB image file.
2. Attempt to upload the 2GB video file.
3. Click "Save".

# Expected Result
- The system prevents the upload of oversized files.
- A clear error message is shown (e.g., "Image size exceeds the limit of 5MB").
- The server does not timeout or return a 500 Internal Server Error.

# Notes
- Check the server's `upload_max_filesize` and `post_max_size` configurations in PHP/Nginx.

# Attachments
