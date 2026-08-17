---
tc_id: TC-FAQ-084
title: Safely Handle an Unsupported FAQ Section Layout
priority: High
status: Draft
type: API
linked_requirement: FAQ-REQ-037
tags:
  - test-case
  - faq
  - validation
  - layout
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| type | faq |
| layout | carousel (unsupported) |
| section_key | accordion |

# Preconditions
- A home screen configuration containing an FAQ section whose `layout` value is unsupported (e.g., `carousel`) is available.

# Steps
1. Submit the configuration to the Mobile App.
2. Observe the application's behavior.

# Expected Result
- The system rejects or safely handles the FAQ configuration with an unsupported `layout`.
- Invalid layout values do not cause the Mobile App to crash.

# Notes

# Attachments