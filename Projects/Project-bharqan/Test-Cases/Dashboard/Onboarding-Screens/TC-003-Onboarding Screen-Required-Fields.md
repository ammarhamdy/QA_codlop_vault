---
tc_id: TC-Onboarding-003
title: Verify required fields validation when adding a Settings Screen
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-012-Bharqan-Dashboard
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the **Add Onboarding Screen** page
# Steps
1. Leave one or more required fields empty (Image, Arabic Title, English Title, Arabic Description, English Description).  
2. Click Add.
# Expected Result
-Clear Validation messages are displayed for all empty required fields, and onboarding screen is not created.
# Notes

# Attachments
