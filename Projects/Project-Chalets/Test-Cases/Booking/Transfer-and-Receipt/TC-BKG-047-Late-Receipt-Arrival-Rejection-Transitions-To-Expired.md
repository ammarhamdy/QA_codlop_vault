---
tc_id: TC-BKG-047
title: Verify Late Receipt Arrival Is Rejected and Booking Transitions to Expired
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000607` |
| Expiration Deadline | `2026-10-18 16:00:00` |
| Server Receipt Arrival Time | `2026-10-18 16:00:03` (3 seconds late) |
| Target Post-Condition | Status `Expired`, Re-book if slot available |

# Preconditions
1. Customer initiates upload of a receipt near the end of the 2-hour window.
2. Due to transmission latency or delay, the upload payload reaches the server at `16:00:03`, after the `16:00:00` expiration deadline.

# Steps
1. Send receipt upload request reaching the server at `16:00:03`.
2. Inspect server validation of receipt arrival time.
3. Observe client UI response and updated booking status.
4. Verify whether the slot is released according to UF-03 rules.

# Expected Result
1. The server rejects the receipt because it arrived after the expiration deadline.
2. The booking status transitions to **"Expired"** (`منتهي المهلة`).
3. The customer receives an error message indicating that the receipt arrived after the timer expired.
4. The system executes the UF-03 expiration flow, releasing the slot within 1 minute.
5. If the slot remains available, the customer is presented with the option to book again.

# Notes
- Requirement: UF-02 Error Flow E3 ("Receipt reaches the server after the timer expired: Receipt rejected. Goes to UF-03. Customer may book again if the slot is available").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
