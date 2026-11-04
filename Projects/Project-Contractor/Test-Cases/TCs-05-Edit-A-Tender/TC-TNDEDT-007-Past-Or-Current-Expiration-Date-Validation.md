---
tc_id: TC-TNDEDT-007
title: Verify Error Handling When Updated Expiration Date Is Set to Past or Current Time
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
| Past Expiration Date | `Yesterday's date` |
| Current Expiration Date | `Current timestamp` |
| Expected Error Message | `"Expiration date must be a future date."` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Edit Tender form for an unawarded tender.

# Steps
1. Navigate to the Expiration Date (`end_date`) field on the Edit Tender form.
2. Change the date to yesterday's date.
3. Click "Save Changes" and observe system validation.
4. Update the date to the exact current timestamp/minute.
5. Click "Save Changes" and observe system validation.

# Expected Result
1. The system confirms that the expiration date fails the future date validation requirement.
2. The error message `"Expiration date must be a future date."` is displayed.
3. The save request is blocked, and user resumes at Step 3 to correct the date.
4. Original tender expiration date in the database remains unchanged.

# Notes
- Directly validates alternative flow E3 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
