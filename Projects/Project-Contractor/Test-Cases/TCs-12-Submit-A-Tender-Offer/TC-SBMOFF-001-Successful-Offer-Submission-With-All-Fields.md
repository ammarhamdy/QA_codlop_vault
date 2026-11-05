---
tc_id: TC-SBMOFF-001
title: Verify Successful Tender Offer Submission with All Fields by Professional
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
| Target Tender ID | `TND-801` (Status: `Open`) |
| Professional Name | `Eng. Mansoor Al-Zahrani` |
| Professional Phone | `+966551234567` |
| Professional WhatsApp | `+966551234567` |
| Proposed Price | `240,000 SAR` |
| Execution Duration | `90 Days` |
| Proposal Description | `Comprehensive turnkey execution including premium materials, dedicated site engineer, and weekly milestone reporting.` |
| Attachment | `detailed_cost_breakdown.pdf` (valid PDF, 3 MB) |
| Expected Confirmation Message | `"Your offer has been submitted successfully."` |

# Preconditions
1. Target tender `TND-801` is published with status `Open` and its expiration date is in the future.
2. User is an unauthenticated Professional on the Public Tender Details screen (`SCR-PUB-02`).
3. SMS, push, or email notification listeners are monitored.

# Steps
1. On the Tender Details screen for `TND-801`, click the "Submit Offer" button.
2. Verify that the Offer Submission form (`SCR-OFF-04`) opens directly without requesting login, registration, or OTP.
3. Enter `Eng. Mansoor Al-Zahrani` in the Professional Name field.
4. Enter `+966551234567` in the Phone Number field.
5. Enter `+966551234567` in the WhatsApp Number field.
6. Enter `240000` in the Proposed Price field and `90` in the Duration field.
7. Enter the detailed proposal in the Description field.
8. Upload `detailed_cost_breakdown.pdf` in the attachments section.
9. Click "Submit Offer".
10. Await system processing.

# Expected Result
1. The system verifies all inputs, validates the active `Open` status of `TND-801`, and captures the client `device_token`.
2. An offer record is created in the database linked to `TND-801` with status `Pending`.
3. A success confirmation dialog appears stating: `"Your offer has been submitted successfully."`.
4. The confirmation explicitly reminds the professional that submitted offers cannot be edited or withdrawn per BR-09.
5. No automated notification is dispatched to the Tender Owner or Professional per BR-11.

# Notes
- Validates Main Flow (Steps 1 to 7), FR-08, BR-02, BR-08, BR-09, and BR-11 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
