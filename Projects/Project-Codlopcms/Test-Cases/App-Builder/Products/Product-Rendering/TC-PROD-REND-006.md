---
tc_id: TC-PROD-REND-006
title: Verify Mobile App Applies All Style Fields to Visual Elements
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-036
tags:
  - test-case
  - rendering
  - style
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| background | #1a1a2e |
| titleColor | #ffffff |
| textColor | #e0e0e0 |
| radius | 16 |
| padding | 20 |
| shadow | default |
| transparentBackground | false |
| hideBorder | false |
| hideItemBorder | false |
| titleGap | 12 |
| gapTop | 24 |
| gapBottom | 24 |

# Preconditions
- A Product Section is configured with specific style values.
- Section is enabled and published.
- Mobile app is connected to the backend.

# Steps
1. Open the mobile app Home screen.
2. Inspect the visual rendering of the section and its product cards.

# Expected Result
- Section background color is applied as `#1a1a2e`.
- Title text color is `#ffffff`, body text color is `#e0e0e0`.
- Section container has corner radius 16 and padding 20.
- Shadow is applied as configured.
- Border is visible (hideBorder: false).
- Product card borders are visible (hideItemBorder: false).
- Section has top gap 24, bottom gap 24.
- Title gap (space between title and cards) is 12.

# Notes

# Attachments
