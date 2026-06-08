---
tc_id: TC-NEWS-010
title: Verify Client-Side News List Display
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
| Seeded News Items | Use multiple news items with images |

# Preconditions
- Multiple news items have been created in the admin panel.
- The client is accessing the website.

# Steps
1. Navigate to the News page on the public website.
2. Verify the visual layout of the news feed (grid or list).
3. For each item, verify that the cover image, title, and a short snippet of content are displayed.
4. Verify that the news items are sorted by date (newest first).

# Expected Result
- The news list renders clearly and responsively.
- Cover images are correctly sized and not distorted.
- Titles match the ones entered in the admin panel.
- Clicking on a news item redirects the user to the full detail page.

# Notes
- Check responsiveness on mobile and desktop.

# Attachments
