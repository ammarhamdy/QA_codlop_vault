---
tc_id: TC-HP-004
title: Verify Introductory Video Visibility and Playback
priority: High
status:
  - Ready
type: Functional
linked_requirement: US-HOME-004
tags:
  - test-case
  - home-page
  - video
run_result: pass
---

# Test Data
| Field     | Value                                                                                                   |
| --------- | ------------------------------------------------------------------------------------------------------- |
| Video URL | https://malkat-dashboard.codlop.sa/storage/settings/JcZxRIUWuzRTSt8OLyhGIezDH3JskILvZ39m6jnm.mp4 |

# Preconditions
- The website's home page is accessible.
- Introductory video is configured.

# Steps
1. Navigate to the Home Page.
2. Scroll down to the Introductory Video section.
3. Verify that the video player is visible.
4. Verify that the video is available for playback (e.g., source is correctly set).
5. Interact with the video player (play, pause, volume, full screen).
6. Verify that video controls are available and functional.

# Expected Result
- The video player is visible on the page.
- The video starts playing when the play button is clicked.
- All standard video controls (play/pause, progress bar, volume, full screen) are available and working correctly.

# Notes

# Attachments
