---
tc_id: TC-BKG-014
title: Verify Customer Manual Cancellation Releases Slot and Does Not Count Toward Expiry Limit
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Temporary Booking ID | `BKG-2026-000203` |
| Chalet / Place | `شاليه النرجس` |
| Initial Expiries Count Today | `0` |
| Post-Cancellation Expiries Count Today | `0` (Must not increment) |

# Preconditions
1. Customer has an active temporary booking (`BKG-2026-000203`) with active timer running.
2. Customer's expiry counter for the current calendar day is tracked in the system.

# Steps
1. Navigate to the temporary booking screen for `BKG-2026-000203`.
2. Tap the **"Cancel Booking"** (`إلغاء الحجز`) button.
3. Confirm the cancellation prompt.
4. Verify the updated status of `BKG-2026-000203`.
5. On another client session, check availability of the slot for `شاليه النرجس`.
6. Inspect the customer's daily expiry tally in user profile / system state.

# Expected Result
1. Booking status transitions to "Cancelled" (`ملغى`).
2. The reserved slot is immediately released and becomes available for other customers to book.
3. The cancellation is **not** counted as an expiry toward the 3-expiry daily limit.
4. The customer's active temporary booking count decrements by 1.

# Notes
- Requirement: UF-02 Alternative Flow A2 and UF-03 Alternative Flow A3 ("Booking was cancelled by the customer earlier: Not counted toward the 3-expiry limit").

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
