---
tc_id: TC-NEWS-006
title: Verify Admin Can Add or Remove Video from News Item
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
| Video File | news_clip.mp4 |

# Preconditions
- The administrator is logged into the admin dashboard.
- A news item exists.
- The administrator is on the "Edit News" form.

# Steps
1. Toggle "Has Video" to "Yes".
2. Upload the "news_clip.mp4" file to the video input field.
3. Click "Save".
4. (Subsequent step) Toggle "Has Video" to "No" or use the "Remove Video" toggle.
5. Click "Save".

# Expected Result
- In Step 3, the video is successfully saved and a video player appears on the client-facing news detail page.
- In Step 5, the video is removed, and the video player no longer appears on the client-facing page.
- Database 'has_video' flag is updated correctly.

# Notes
- Ensure the video is not just hidden by CSS but actually removed/unlinked from the news item.

# Attachments
