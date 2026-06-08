---
tc_id: TC-NEWS-011
title: Verify Client-Side News Detail Page Rendering
priority: High
status: Ready
type: Functional
linked_requirement: 
tags:
  - test-case
  - news-client
  - functional
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target News Item | A news item with content, gallery, and video |

# Preconditions
- A comprehensive news item is created in the admin panel.
- The client is on the news list page.

# Steps
1. Click on the target news item to open the detail page.
2. Verify that the full title and the complete HTML content are rendered correctly.
3. Verify that the main cover image is displayed prominently.
4. Scroll to the gallery and verify that all uploaded gallery images are visible and clickable (lightbox effect).
5. Verify that the video player is present and the video plays correctly.

# Expected Result
- The news detail page loads all content without errors.
- HTML tags (strong, p, ul, etc.) are rendered as intended.
- The gallery is functional and images are high quality.
- The video plays with audio and video sync.

# Notes
- Test the "Back to News" button to ensure it returns the user to the list.

# Attachments
