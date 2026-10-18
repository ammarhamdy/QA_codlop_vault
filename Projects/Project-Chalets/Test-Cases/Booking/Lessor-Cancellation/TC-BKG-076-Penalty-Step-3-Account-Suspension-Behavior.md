---
tc_id: TC-BKG-076
title: Verify Step 3 Account Suspension Terminates Sessions Blocks Login and Moves Bookings to Follow-up
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor ID | `LESSOR-3015` |
| Applied Penalty Step | `Step 3: Account Suspension` (`إيقاف الحساب`) |
| Existing Active Booking | `BKG-2026-000715` (Confirmed) |
| Follow-up Queue | Support Dashboard -> `Needs Follow-up` (`بحاجة لمتابعة`) |

# Preconditions
1. Lessor `LESSOR-3015` has an active logged-in session, multiple published ads, and an active booking `BKG-2026-000715`.
2. Support applies Step 3 (Account Suspension) to `LESSOR-3015`.

# Steps
1. In the lessor app session, perform any user action (e.g. refresh, tap navigation).
2. Attempt to log in again using lessor credentials.
3. Check status of all ads owned by this lessor.
4. Open the Support operations dashboard and inspect the **"Needs Follow-up"** (`بحاجة لمتابعة`) list.
5. In Support panel, select booking `BKG-2026-000715` and trigger administrative cancellation with reason.
6. Check customer notification for `BKG-2026-000715`.

# Expected Result
1. All active lessor sessions are immediately terminated; subsequent API calls return 401/403.
2. Login is blocked with an account suspension notification.
3. All ads owned by the lessor are administratively suspended.
4. Existing bookings are routed to Support under "Needs Follow-up" for case-by-case adjudication.
5. If Support cancels a booking due to the suspension, the customer is notified: `«ألغت الإدارة الحجز: {السبب}»`.

# Notes
- Requirement: UF-11 Alternative Flows A3, A5.

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
