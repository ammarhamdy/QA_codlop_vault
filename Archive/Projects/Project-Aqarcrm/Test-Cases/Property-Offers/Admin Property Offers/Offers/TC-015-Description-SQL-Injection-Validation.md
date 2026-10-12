---
tc_id: TC-A-Off-015
title: Verify SQL Injection Validation in Description Field
priority:
  - High
status:
  - Ready
type: Security
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
1. Enter a SQL Injection payload (e.g., `' OR 1=1 --`) in the **Description** field.
2. save the offer.
# Expected Result
-The system safely handles the input without executing SQL commands, no unexpected behavior occurs, and the application remains secure.
# Notes

# Attachments
