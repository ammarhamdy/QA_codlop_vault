---
tc_id: TC-SBMOFF-002
title: Verify Successful Offer Submission with Mandatory Fields Only
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Tender ID | `TND-802` (Status: `Open`) |
| Professional Name | `Khaled Al-Dossary` |
| Professional Phone | `+966509876543` |
| Professional WhatsApp | `[Empty]` (Optional) |
| Proposed Price | `85,000 SAR` |
| Execution Duration | `30 Days` |
| Proposal Description | `Interior finishing and plastering execution as specified.` |
| Attachments | `[Empty]` (Optional) |

# Preconditions
1. Target tender `TND-802` is `Open` with a future expiration date.
2. User is an unauthenticated Professional on the Offer Submission form (`SCR-OFF-04`).

# Steps
1. Enter `Khaled Al-Dossary` into the Professional Name field.
2. Enter `+966509876543` into the Professional Phone field.
3. Leave the WhatsApp number input field empty.
4. Enter `85000` into the Proposed Price field.
5. Enter `30` into the Duration field.
6. Enter `Interior finishing and plastering execution as specified.` into Description.
7. Leave the attachments upload area empty.
8. Click "Submit Offer".

# Expected Result
1. The system confirms all mandatory fields are valid.
2. The submission is accepted without requiring optional WhatsApp or attachments.
3. An offer record is created with status `Pending` linked to `TND-802`.
4. The success confirmation dialog is displayed: `"Your offer has been submitted successfully."`.

# Notes
- Validates handling of mandatory vs optional fields under Steps 2, 3, 4, 5 of UF-12 and BR-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
