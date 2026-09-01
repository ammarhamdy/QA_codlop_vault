---
tc_id: TC-Not-007
title: Verify required fields validation when creating a notification
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Beauty-Dashboard-Management
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Notification Screen
# Steps
1. Click **Add**.  
2. Leave one or more required fields empty (Title, Notification Type, Related Category/Product, Content, or Schedule).  
3. Click **Save**.
# Expected Result
-Validation messages are displayed for all required fields, and the notification is not created.
# Notes

# Attachments
