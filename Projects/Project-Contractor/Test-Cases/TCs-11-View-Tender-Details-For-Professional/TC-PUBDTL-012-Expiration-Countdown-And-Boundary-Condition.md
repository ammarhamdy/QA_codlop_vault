---
tc_id: TC-PUBDTL-012
title: Verify Expiration Date Formatting and Remaining Time Countdown Accuracy
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: fail
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-712` |
| Expiration Timestamp | `CURRENT_TIMESTAMP + 2 Hours 15 Minutes` |
| Displayed Expiration | Formatted local date/time (e.g., `04/11/2026, 04:55 PM AST`) |
| Expected Countdown | `2 hours left` (or dynamic timer `02:15:xx`) |

# Preconditions
1. Tender `TND-712` has status `Open` and is expiring in 2 hours and 15 minutes.
2. User is on the public Tender Details screen (`SCR-PUB-02`).

# Steps
1. Navigate to the Tender Details screen for `TND-712`.
2. Inspect the expiration date container and remaining time badge.
3. Verify that the expiration date matches the localized timestamp.
4. Verify that the dynamic remaining time or countdown reflects the actual duration until `end_date`.
5. Keep the page open until expiration threshold is reached or test immediate reload when expired.

# Expected Result
1. The expiration date and remaining time indicator are rendered with clear visual emphasis.
2. Time calculation accurately reflects time remaining until the scheduled deadline.
3. If the deadline expires while the user is viewing the page, subsequent attempts to interact with "Submit Offer" trigger the expiration guard per BR-04 and UF-12.

# Notes
- Validates FR-03, BR-04, and time calculation accuracy.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
