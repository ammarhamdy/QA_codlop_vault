---
tc_id: TC-Login-009
title: Verify login with mismatched country code and phone number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
---

# Test Data
| Field        | Value       |
| ------------ | ----------- |
| Country Code | Egypt (+20) |
| Phone Number | 512345678   |

# Preconditions
User is on the Login screen with the country code selector available.
# Steps
1. Select **Egypt (+20)** as the country code.  
2. Enter a valid phone number belonging to another country (Saudi Arabia number).  
3. click send OTP.
# Expected Result
-The system displays the message: "Invalid phone number for the selected country code."
# Notes

# Attachments
