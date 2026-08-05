---
tc_id: TC-A-Off-013
title: Verify Offer Date Validation
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
1. Select a **Start Date** that is later than the **End Date** and attempt to save.  
2. Select the **same Start Date and End Date** and attempt to save.
# Expected Result
-The system validates the selected dates according to the business rules. An End Date earlier than the Start Date is rejected with a validation message, while selecting the same Start Date and End Date is accepted if same-day offers are supported; otherwise, an appropriate validation message is displayed.
# Notes

# Attachments
