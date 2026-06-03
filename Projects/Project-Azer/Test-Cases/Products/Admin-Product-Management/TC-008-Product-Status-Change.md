---
tc_id: TC-008
title: Verify admin can change product status between Active and Inactive
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-006
tags:
  - test-case
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
An administrator is logged into the admin panel and is viewing products

# Steps
1. Select a product.  
2. Change status from Active to Inactive.
# Expected Result
Product status is updated successfully and reflected correctly in the products list.
# Notes

# Attachments
