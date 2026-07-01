---
tc_id: TC-CART-PayDet-003
title: Verify required company fields
priority:
  - High
  - Medium
  - Low
status:
  - Draft
  - Ready
type:
  - Functional
  - Regression
  - API
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field                          | Value           |
| ------------------------------ | --------------- |
| CompanyName                    | (empty)         |
| Commercial Registration Number | 1010123456      |
| TAX  Number                    | 300123456700003 |

# Preconditions
-Purchase as Company is enabled.
# Steps
1. Leave company name field empty.
2. Fill other fields & tap save   
# Expected Result
-A validation message is displayed for the required field, and the company information cannot be saved until it is completed.
# Notes

# Attachments
