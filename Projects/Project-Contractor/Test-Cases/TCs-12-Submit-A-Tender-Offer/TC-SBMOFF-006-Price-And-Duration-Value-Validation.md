---
tc_id: TC-SBMOFF-006
title: Verify Boundary and Numeric Validation When Price or Duration Is Non-Positive
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value 1 | Value 2 |
| ----- | ------- | ------- |
| Proposed Price | `0` | `-15000` |
| Duration | `0` | `-5` |
| Contact & Description | Complete valid information | Complete valid information |
| Expected System Feedback | Inline error indicating price and duration must be positive numbers |

# Preconditions
1. Target tender is `Open`.
2. Professional is on the Offer Submission form (`SCR-OFF-04`).

# Steps
1. Fill Name, Phone, and Description with valid data.
2. Enter `0` in the Proposed Price field and `0` in the Duration field.
3. Click "Submit Offer" and observe validation.
4. Update Price to `-15000` and Duration to `-5`.
5. Click "Submit Offer" and observe validation.

# Expected Result
1. The system identifies non-positive numeric values as invalid.
2. Form submission is blocked.
3. Inline validation errors are displayed indicating that price and duration must be positive numeric values.
4. No offer is persisted to the database.

# Notes
- Validates Main Flow Step 4 and alternative flow E1 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
