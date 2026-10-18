---
tc_id: TC-BKG-069
title: Verify Display of Full Refund Obligation and Business Day Deadline Calculation Excluding Weekends
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
| Booking Reference | `BKG-2026-000709` |
| Full Booking Amount | `3,200 SAR` |
| Acceptance Timestamp | Thursday, `2026-10-22 10:00:00` |
| Refund Window | `3 Business Days` |
| Excluded Weekend Days | Friday (`2026-10-23`), Saturday (`2026-10-24`) |
| Expected Expiration Date | Tuesday, `2026-10-27 10:00:00` (Day 1: Sun 25, Day 2: Mon 26, Day 3: Tue 27) |

# Preconditions
1. Booking `BKG-2026-000709` had a total amount paid of `3,200 SAR`.
2. Customer accepts the lessor cancellation request on Thursday `2026-10-22 10:00:00`.
3. Standard working week is Sunday through Thursday.

# Steps
1. Upon customer acceptance, navigate to the refund tracking view in both customer and lessor applications.
2. Verify the displayed amount owed by the lessor.
3. Verify whether partial refund deductions or platform commissions are permitted.
4. Verify the calculated refund deadline date and remaining time counter.
5. Verify whether Friday (`2026-10-23`) and Saturday (`2026-10-24`) are excluded from the countdown.

# Expected Result
1. The UI displays the exact full amount owed (`3,200 SAR`) to both parties; no deductions are made.
2. The platform reminds the lessor that the refund must be made in full outside the platform.
3. The deadline is calculated as exactly 3 business days: Sunday (Day 1), Monday (Day 2), and Tuesday (Day 3), expiring on `2026-10-27 10:00:00`.
4. Friday and Saturday are excluded from the business day calculation.

# Notes
- Requirement: UF-10 Steps 1–2 and Notes ("Business days are Sunday to Thursday. Friday and Saturday are always excluded. The platform only shows the amount owed and obliges the lessor to refund. It never handles the money").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
