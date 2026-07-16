---
tc_id: TC-CART-PayDet-004
title: Verify Commercial Registration and Tax Number Accept Numeric Input Only
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-008-Beauty-CART-Payment
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                          | Value               |
| ------------------------------ | ------------------- |
| CompanyName                    | ALHUDA              |
| Commercial Registration Number | BNBNNB10123456      |
| TAX  Number                    | *&)300123456700003# |

# Preconditions
-Purchase as Company is enabled.
# Steps
1. Enter Company name.
2. Enter alphabetic characters & special characters in both CR/TAX Number.
# Expected Result
-Both fields accept numeric values only. Any alphabetic characters, special characters, or alphanumeric input are rejected or an appropriate validation message is displayed.
# Notes

# Attachments
