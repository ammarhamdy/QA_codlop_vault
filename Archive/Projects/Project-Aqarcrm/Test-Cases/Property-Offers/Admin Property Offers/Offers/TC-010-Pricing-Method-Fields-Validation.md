---
tc_id: TC-A-Off-010
title: Verify Pricing Method Fields Validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: Add Property Offer form is open
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

# Steps
1. Select **Manual** pricing method   
2. Select **Fixed Amount** pricing method.  
3. Select **Percentage** pricing method.  
4. Verify the displayed fields.
# Expected Result
-The system displays the correct fields based on the selected pricing method:  
• **Manual:** Price Before & Price After.  
• **Fixed Amount:** Original Price & Discount Amount.
• **Percentage:** Original Price, Discount Percentage, and Calculated Price.
# Notes

# Attachments
