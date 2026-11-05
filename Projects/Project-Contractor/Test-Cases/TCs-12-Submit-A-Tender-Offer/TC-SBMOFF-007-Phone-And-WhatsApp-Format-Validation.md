---
tc_id: TC-SBMOFF-007
title: Verify Contact Phone and WhatsApp Number Format Validation
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Invalid Phone Format | `050-ABC-12` |
| Incomplete Phone Number | `05012` |
| Invalid WhatsApp Format | `not_a_number` |
| Expected Message | `"Please provide valid contact and proposal information."` |

# Preconditions
1. Target tender is `Open`.
2. Professional is on the Offer Submission form (`SCR-OFF-04`).

# Steps
1. Enter `050-ABC-12` into the Professional Phone field.
2. Enter valid proposal values for Price, Duration, and Description.
3. Click "Submit Offer" and observe validation feedback.
4. Correct the Phone field to a valid number, but enter `not_a_number` in the optional WhatsApp field.
5. Click "Submit Offer" and observe validation feedback.

# Expected Result
1. The system validates phone number formatting and rejects non-numeric or malformed telephone sequences.
2. If optional WhatsApp is provided, its format is similarly validated against standard phone syntax.
3. The error message `"Please provide valid contact and proposal information."` is displayed.
4. Submission is blocked until valid phone numbers are provided.

# Notes
- Validates Main Flow Steps 2 and 3 and alternative flow E1 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
