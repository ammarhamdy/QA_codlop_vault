---
tc_id: TC-BKG-034
title: Verify Dispute on Rejection Enforces 48-Hour Bank Statement SLA for Lessor
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000518` (Status: Rejected) |
| Customer Action | Confirms payment transferred & opens dispute |
| Bank Statement SLA | `48 Hours` from dispute initiation |

# Preconditions
1. Booking `BKG-2026-000518` was rejected by the lessor.
2. Customer claims the amount was transferred and has valid bank confirmation.
3. Customer is on the rejected booking details view.

# Steps
1. As the Customer, tap **"Report a Problem"** (`الإبلاغ عن مشكلة`) and open a dispute asserting that payment was transferred.
2. In the Lessor portal, observe the incoming dispute notification and the mandatory request to provide an official bank statement.
3. Verify the timer/deadline set for the lessor to submit the bank statement (48 hours).
4. Scenario A: Lessor uploads valid account statement within 48 hours -> verify dispute moves to support investigation.
5. Scenario B: Lessor fails to upload statement within 48 hours -> verify system applies presumption in customer's favor and flags lessor account for penalty ladder review.

# Expected Result
1. Customer is able to successfully open a dispute on the rejected booking.
2. System requires the lessor to provide an account statement within exactly 48 hours.
3. If the lessor fails to submit within 48 hours, the system records a presumption in favor of the customer and triggers an escalation to support with a proposed penalty step for the lessor.

# Notes
- Requirement: UF-06 Alternative Flows A1 and A2.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
