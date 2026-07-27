---
tc_id: TC-Address-015
title: Verify Duplicate Address
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-010-Bharqan-Addresses
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is logged in and already has a saved address.
# Steps
1. Tap **Add New Address**.  
2. Enter the exact same details as an existing saved address.  
3. Tap **Save**.
# Expected Result
-The system checks for duplicate addresses. If duplicate addresses are not allowed, an appropriate validation message is displayed and the address is not saved. If duplicates are allowed by the business rules, the address is saved successfully without affecting the existing address.
# Notes

# Attachments
