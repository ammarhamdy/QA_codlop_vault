---
tc_id: TC-BKG-CAN-065
title: Type B Dispute When Host Fails to Refund After Accepted Cancellation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Cancelled by agreement |
| Scenario | full refund owed |
| Scenario | 3 business days elapsed |

# Preconditions

Customer accepted host cancellation request but refund was not paid.

# Steps

1. Open cancelled booking details.
2. Select Open Dispute and choose type (ب).
3. Enter valid description and submit.
4. Inspect support decision and due amount.

# Expected Result

1. Type B dispute is available within dispute filing window.
2. Full booking amount is due, not policy-reduced amount.
3. Dispute process uses a 3-business-day refund deadline after decision.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
