---
tc_id: TC-BKG-046
title: Verify System Validates Receipt Reached Server Before Countdown Expiry
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
| Booking Reference | `BKG-2026-000606` |
| Expiration Deadline | `2026-10-18 16:00:00` |
| Server Receipt Arrival Time | `2026-10-18 15:59:50` (10 seconds before deadline) |
| Target Status | `Awaiting Lessor Confirmation` |

# Preconditions
1. Booking `BKG-2026-000606` has an active countdown timer set to expire at `16:00:00`.
2. Valid receipt and transfer date are selected by the customer.

# Steps
1. Tap **"Send Receipt"** and confirm at `15:59:45`.
2. Ensure the receipt packet fully arrives and is registered on the backend server at `15:59:50` (prior to the `16:00:00` deadline).
3. Observe backend timestamp validation logic and database update.
4. Verify response returned to the client app.

# Expected Result
1. The backend compares server arrival timestamp against the booking expiration deadline.
2. Because arrival time precedes deadline, the receipt is confirmed as timely.
3. Booking status changes to **"Awaiting Lessor Confirmation"** (`بانتظار تأكيد المؤجّر`).
4. The countdown timer is immediately stopped and terminated on both client and server.
5. The slot reservation remains held for this booking.

# Notes
- Requirement: UF-02 Main Flow Step 7 ("Checks the receipt reached the server before the timer expired").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
