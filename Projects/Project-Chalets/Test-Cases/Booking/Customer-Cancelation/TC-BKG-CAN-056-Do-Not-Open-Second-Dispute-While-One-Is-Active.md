---
tc_id: TC-BKG-CAN-056
title: Do Not Open Second Dispute While One Is Active
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
| Scenario | Cancelled booking |
| Scenario | already has open dispute DSP ID |

# Preconditions

Customer owns a cancelled booking with an open dispute.

# Steps

1. Open booking details and attempt Open Dispute again.
2. Inspect existing dispute navigation.

# Expected Result

1. Second open dispute is not created.
2. Message: يوجد نزاع مفتوح على هذا الحجز.
3. Customer is directed to the existing dispute.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
