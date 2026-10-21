---
tc_id: TC-BKG-CAN-040
title: "Custom Admin Cancellation Window Applies"
priority: High
status: Ready
type: Functional
linked_requirement: "PRD §11, §36"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Admin confirmed cancellation cutoff changed from 24h to 36h |

# Preconditions

Admin configuration has propagated; booking is confirmed.

# Steps

1. Set confirmed-cancellation cutoff to 36h.
2. Test booking with 40h remaining.
3. Test another booking with 35h remaining.

# Expected Result

1. 40h case can cancel; 35h case cannot under new cutoff.
2. Blocked case shows expired-window message and API rejects.

# Notes

Refund policy percentage remains separately governed by the policy fixed to the booking.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
