---
tc_id: TC-LM-062
title: Choice Validation - Choices with Mixed Language & Special Characters
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Pillars |
| Choice 1 | أ) Reciting Surah Al-Fatihah (الفاتحة) - (Correct) |
| Choice 2 | ب) Takbeerat-ul-Ihram (تكبيرة الإحرام) |

# Preconditions
- Admin on creation page.

# Steps
1. Enter mixed English, Arabic, and symbols in Choice inputs.
2. Submit.

# Expected Result
- The lesson is successfully created and correctly displays the mixed RTL/LTR tokens.

# Notes

# Attachments
