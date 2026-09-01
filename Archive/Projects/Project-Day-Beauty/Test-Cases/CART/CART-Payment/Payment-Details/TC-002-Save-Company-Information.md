---
tc_id: TC-CART-PayDet-002
title: Verify saving company information
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-008-Beauty-CART-Payment
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                          | Value           |
| ------------------------------ | --------------- |
| CompanyName                    | شركة الهدي      |
| Commercial Registration Number | 1010123456      |
| VAT Registration Number        | 300123456700003 |

# Preconditions
-Purchase as Company is enabled.
# Steps
1. Fill fields with valid data.
2. Tap Save
# Expected Result
-Company information is saved successfully.
# Notes

# Attachments
