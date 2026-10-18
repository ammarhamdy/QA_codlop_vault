---
tc_id: TC-BKG-015
title: Verify Receipt Upload Failure Displays Error Keeps Timer Running and Allows Retry
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Temporary Booking ID | `BKG-2026-000204` |
| Corrupt / Problematic File | `corrupted_receipt.png` / Simulated 500 error on upload endpoint |
| Valid Receipt File | `valid_transfer_receipt.jpg` |
| Timer Remaining | `00:40:00` |

# Preconditions
1. Customer has an active temporary booking (`BKG-2026-000204`) with remaining time (e.g. 40 minutes).
2. Customer is on the receipt upload screen.

# Steps
1. Select a file that triggers upload failure (or intercept upload request to return an HTTP error).
2. Tap submit / upload receipt.
3. Observe system behavior and timer state during and after the failure.
4. Select a valid receipt file (`valid_transfer_receipt.jpg`).
5. Tap submit / upload receipt again.

# Expected Result
1. On upload failure, a clear error message is displayed prompting the user to check their connection and retry.
2. The countdown timer does not stop, pause, or reset; it continues ticking down.
3. The booking status remains "Temporary" (`محجوز مؤقتًا`).
4. The user is able to immediately retry uploading a valid receipt.
5. Upon successful retry, the upload succeeds, timer stops, and status transitions to "Awaiting Lessor Confirmation".

# Notes
- Requirement: UF-02 Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
