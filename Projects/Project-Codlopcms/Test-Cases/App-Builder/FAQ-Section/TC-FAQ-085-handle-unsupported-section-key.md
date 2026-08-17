---
tc_id: TC-FAQ-085
title: Safely Handle an Unsupported FAQ section_key Value
priority: High
status: Draft
type: API
linked_requirement: FAQ-REQ-037
tags:
  - test-case
  - faq
  - validation
  - section_key
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| type | faq |
| layout | accordion |
| section_key | list (unsupported) |

# Preconditions
- A home screen configuration containing an FAQ section whose `section_key` value is unsupported (e.g., `list`) is available.

# Steps
1. Submit the configuration to the Mobile App.
2. Observe the application's behavior.

# Expected Result
- The system rejects or safely handles the FAQ configuration with an unsupported `section_key`.
- Invalid `section_key` values do not cause the Mobile App to crash.

# Notes

# Attachments