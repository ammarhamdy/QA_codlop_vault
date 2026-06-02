---
tc_id: TC-004
title: Verify Email and Confirm Email Match Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
---

# Test Data
| Field         | Value                                |
| ------------- | ------------------------------------ |
| Email         | fatma@gmail.com                      |
| Confirm Email | fatma@gmail.com / fatma114@gmail.com |

# Preconditions
-User is on  Register Your Interest page.
-Email & Confirm Email field are visible and enabled
# Steps
   1- Navigate to the 'Partnership Request' page.
   2- Enter a value in the Email field
  3- Enter the same value or a different value in the Confirm Email field
  4- Fill other fields with valid data 
  5- Click on Submit / Register button
# Expected Result
- The system should allow submission only when Email and Confirm Email fields have identical values.
# Notes

# Attachments
