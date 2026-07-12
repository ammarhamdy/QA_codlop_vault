---
tc_id: TC-PROD-JSON-002
title: Verify Generated JSON Includes style Object with All Configured Properties
priority: High
status:
  - completed
type: API
linked_requirement: PROD-REQ-031, PROD-REQ-012, PROD-REQ-013, PROD-REQ-014, PROD-REQ-015, PROD-REQ-016, PROD-REQ-017, PROD-REQ-018
tags:
  - test-case
  - json
  - style
  - generation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| background | #1a1a2e |
| titleColor | #ffffff |
| textColor | #e0e0e0 |
| radius | 12 |
| padding | 16 |
| shadow | none |
| transparentBackground | false |
| hideBorder | false |
| hideItemBorder | false |
| titleGap | 8 |
| gapTop | 16 |
| gapBottom | 16 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is configured with all the above style values.
- The section is saved/published.

# Steps
1. Generate the JSON output.
2. Inspect the `style` object.

# Expected Result
- The `style` object contains all configured properties with their correct values:
  - `background`: "#1a1a2e"
  - `titleColor`: "#ffffff"
  - `textColor`: "#e0e0e0"
  - `radius`: 12
  - `padding`: 16
  - `shadow`: "none"
  - `transparentBackground`: false
  - `hideBorder`: false
  - `hideItemBorder`: false
  - `titleGap`: 8
  - `gapTop`: 16
  - `gapBottom`: 16

# Notes

# Attachments
