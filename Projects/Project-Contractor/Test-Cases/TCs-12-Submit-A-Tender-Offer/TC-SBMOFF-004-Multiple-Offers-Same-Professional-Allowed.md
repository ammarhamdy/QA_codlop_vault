---
tc_id: TC-SBMOFF-004
title: Verify the Same Professional Can Submit Multiple Offers for the Same Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Offer 1 Details | Offer 2 Details |
| ----- | --------------- | --------------- |
| Target Tender | `TND-804` | `TND-804` |
| Professional Name | `Sami Al-Qahtani` | `Sami Al-Qahtani` |
| Professional Phone | `+966504443322` | `+966504443322` |
| Price | `130,000 SAR` | `150,000 SAR` |
| Duration | `40 Days` | `50 Days` (Includes Premium Specs) |

# Preconditions
1. Target tender `TND-804` is in `Open` status.
2. Professional `Sami Al-Qahtani` (`+966504443322`) has already submitted Offer 1 (`130,000 SAR`) for `TND-804`.
3. User opens the Offer Submission form again for `TND-804`.

# Steps
1. Navigate to the Public Tender Details screen for `TND-804`.
2. Click "Submit Offer".
3. Enter the same professional name (`Sami Al-Qahtani`) and phone number (`+966504443322`).
4. Enter the revised proposal details: Price `150,000 SAR` and Duration `50 Days`.
5. Click "Submit Offer".
6. Await system processing.

# Expected Result
1. The system permits the submission without duplicate-rejection errors.
2. The second offer is accepted and stored as an independent record with status `Pending`.
3. The previous Offer 1 is not overwritten, updated, or deleted.
4. Adheres strictly to BR-08 ("The same professional can submit multiple offers for the same tender") and alternative flow A1.

# Notes
- Directly validates alternative flow A1 in UF-12 and BR-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
