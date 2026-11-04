---
tc_id: TC-TND-004
title: Verify Boundary and Value Validation When Budget Is Zero or Negative
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Budget Boundary (Zero) | `0` |
| Budget Boundary (Negative) | `-500` |
| Valid Mandatory Fields | Complete valid project information |
| Expected Error Message | `"Budget must be greater than zero"` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Fill all required fields (Title, Description, Project Type, Location, Project Area, future Expiration Date) with valid data.
2. In the Budget field, enter `0`.
3. Click "Publish Tender" and observe system validation.
4. Clear the Budget field and enter `-500`.
5. Click "Publish Tender" and observe system validation.

# Expected Result
1. The system flags the Budget input as invalid.
2. An inline validation error `"Budget must be greater than zero"` is displayed beneath the field.
3. Tender creation is blocked and the user remains on the form with previously entered data intact.
4. No tender is created in the database.

# Notes
- Directly validates budget validation rule cited under alternative flow E1 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
