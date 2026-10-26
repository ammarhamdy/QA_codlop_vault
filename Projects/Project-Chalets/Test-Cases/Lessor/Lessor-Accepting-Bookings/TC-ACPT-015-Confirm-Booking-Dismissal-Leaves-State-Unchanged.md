---
tc_id: TC-ACPT-015
title: Confirm Booking - Dialog Dismissal Leaves Booking State Completely Unchanged
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Action | Tap "Confirm Amount Received" -> Close dialog (`إلغاء` / tap outside) |

# Preconditions
1. Lessor is on the details screen of a booking awaiting confirmation.
2. The booking has not been confirmed.

# Steps
1. Tap **"Confirm Amount Received"**.
2. When the confirmation modal appears, tap the **"Cancel"** (`إلغاء`) button or dismiss the modal.
3. Check the booking status, countdown counter, and calendar slot.

# Expected Result
1. The confirmation modal closes immediately.
2. The booking status remains strictly "Awaiting Lessor Confirmation".
3. The confirmation countdown timer continues running without pause.
4. No notifications are sent to the customer, and the calendar slot remains in the holding state.

# Notes
- Requirement: UF-04 (Alternative Flow A2: "Lessor closes the dialog -> Nothing changes").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
