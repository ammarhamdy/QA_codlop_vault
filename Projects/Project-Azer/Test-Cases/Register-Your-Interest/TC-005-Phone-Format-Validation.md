---
tc_id: TC-005
title: Verify phone number validation (numeric only, country code & length limits)
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003
tags:
  - test-case
---

# Test Data
| Field        | Value       |
| ------------ | ----------- |
| Phone Number | 012297431   |
| Phone Number | abcdefghijk |
| Phone Number | 512345      |
| Phone Number | 51234567891 |


# Preconditions
- User is on the website's 'Register Your Interest' page.
# Steps
1. Navigate to the 'Register Your Interest' page.
2. Fill in valid data for Name, Email Address, Message Content, and Entity&  partnership Type.
3. Enter an invalid phone number format (e.g., 012297431) according to code in the Phone Number field.
4. Click the "send " button.
5. Repeat with other invalid phone number formats (e.g., `abcdefghijk`, `+1 (234)`).
# Expected Result
- The system should accept only valid numeric phone numbers with a correct country code and valid length.
# Notes

# Attachments
