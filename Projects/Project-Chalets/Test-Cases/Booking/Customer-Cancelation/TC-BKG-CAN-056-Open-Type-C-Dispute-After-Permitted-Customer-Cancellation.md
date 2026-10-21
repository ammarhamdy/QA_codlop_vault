---
tc_id: TC-BKG-CAN-056
title: "Open Type C Dispute After Permitted Customer Cancellation"
priority: High
status: Ready
type: Functional
linked_requirement: "PRD §11, §13"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Cancelled_by_customer |
| Scenario | refund due 500 SAR |
| Scenario | host has not refunded |

# Preconditions

Customer cancelled within allowed window and receipt had been uploaded.

# Steps

1. Open cancelled booking details.
2. Choose Open Dispute.
3. Select type (ج): ألغيت ضمن المسموح ولم أُسترد.
4. Enter valid 20–2000 character description and submit.

# Expected Result

1. Type C dispute can be opened within the allowed dispute window.
2. A DSP-YYYY-NNNNN reference is created.
3. Host and support receive dispute notification; dispute is tracked in My Disputes.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
