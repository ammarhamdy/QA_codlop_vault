---
tc_id: TC-BKG-048
title: Verify Upload Failure Due to Network Error Keeps Timer Running and Allows Immediate Retry
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000608` |
| Failure Simulation | Network disconnect / HTTP 503 Service Unavailable |
| Timer Remaining | `01:15:00` |

# Preconditions
1. Customer has an active temporary booking `BKG-2026-000608` with 1 hour and 15 minutes remaining.
2. Customer is on the upload receipt form with valid receipt and transfer date.

# Steps
1. Simulate temporary network interruption or proxy a 503 error on the receipt upload endpoint.
2. Tap **"Send Receipt"** and confirm.
3. Observe the displayed system message.
4. Verify whether the countdown timer stops or resets.
5. Restore network connection and tap **"Retry"** / re-submit the form.

# Expected Result
1. The upload attempt fails gracefully and displays a message asking the user to check their connection and retry.
2. The countdown timer is **not** halted, paused, or reset; it continues ticking down normally.
3. The booking status remains "Temporary".
4. Upon restoring connection and retrying, the upload proceeds successfully, transitions status to "Awaiting Lessor Confirmation", and stops the timer.

# Notes
- Requirement: UF-02 Error Flow E2 ("Upload fails (network or server): Message asks to check the connection and retry. Timer keeps running").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
