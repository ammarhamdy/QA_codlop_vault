---
tc_id: TC-A-Off-012
title: Verify Pricing Field Validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Property-Offers
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Add Property Offer form is open.
# Steps
1. Enter alphabetic characters in a pricing field.
2. Enter special characters.
3. Enter a negative value in a pricing field.
4. Attempt to save the offer.
# Expected Result
-The system accepts only valid positive numeric values. Alphabetic characters, invalid special characters, and negative values are rejected with a validation message or prevented from being entered.
# Notes

# Attachments
