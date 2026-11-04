---
tc_id: TC-TNDEDT-006
title: Verify Validation Error and Save Prevention When Budget Is Updated to Zero or Negative
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Updated Value |
| ----- | ------------- |
| Invalid Budget Boundary 1 | `0` |
| Invalid Budget Boundary 2 | `-2500` |
| Expected Error Message | `"Budget must be greater than zero"` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Edit Tender form for an unawarded tender.

# Steps
1. Navigate to the Budget field on the Edit Tender form.
2. Clear the existing positive value and enter `0`.
3. Click "Save Changes" and observe validation feedback.
4. Clear the field and enter `-2500`.
5. Click "Save Changes" and observe validation feedback.

# Expected Result
1. The system flags the non-positive budget entries as invalid.
2. An inline validation error `"Budget must be greater than zero"` is displayed beneath the field.
3. Form saving is blocked and the user remains at Step 3.
4. The database record is not updated with zero or negative budget values.

# Notes
- Validates alternative flow E2 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
