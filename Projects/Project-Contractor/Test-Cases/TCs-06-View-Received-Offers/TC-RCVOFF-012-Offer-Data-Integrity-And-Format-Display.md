---
tc_id: TC-RCVOFF-012
title: Verify Data Formatting and Integrity for Price, Duration, and Submission Date on Offer Cards
priority: Low
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
run_result: pass
web_run_result: fail
---

# Test Data
| Field | Expected Format / Data Sample |
| ----- | ----------------------------- |
| Proposed Price | Formatted currency with thousands separator (e.g., `85,000 SAR`) |
| Duration | Execution duration formatted with time unit (e.g., `30 Days`) |
| Submission Timestamp | Date and time format (e.g., `2026-11-04 10:15 AM`) |
| Professional Name | Plain text string (e.g., `Sami Al-Mutairi`) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-312` is owned by the user and has received offers.
3. User is viewing the received offers listing (`SCR-OFF-01`).

# Steps
1. Navigate to the View Received Offers screen for tender `TND-312`.
2. Inspect the proposed price displayed on each offer card.
3. Inspect the execution duration formatting on each card.
4. Inspect the submission timestamp formatting on each card.
5. Cross-reference the rendered values with the corresponding raw database values in the `tender_offers` table.

# Expected Result
1. Numerical prices are formatted accurately with proper currency indicators without truncation or rounding errors.
2. Execution duration is clearly presented with appropriate time units (e.g., days/months).
3. Timestamps are localized and displayed in a readable format.
4. No placeholder text (e.g., `NaN`, `undefined`, or raw epoch timestamps) is shown.

# Notes
- Validates data presentation requirements under Step 3 of the Main Flow in UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
