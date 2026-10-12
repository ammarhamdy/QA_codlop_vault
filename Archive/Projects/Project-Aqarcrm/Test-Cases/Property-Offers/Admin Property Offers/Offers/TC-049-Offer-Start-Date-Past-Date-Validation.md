---
tc_id: TC-A-Off-049
title: Verify that the offer start date cannot be set to a past date.
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Property-Offers
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Property Offer page.
# Steps
1. Set the **Start Date** to a date earlier than the current date.
2. fill required fields.
3. Click **Save**.
# Expected Result
-The system should prevent saving the offer and display a validation message, or prevent selecting a past start date.
# Notes

# Attachments
