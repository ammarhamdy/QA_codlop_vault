---
tc_id: TC-DSP-015
title: Verify Type C Dispute Calculates Refund Based on Booking Policy Snapshot Not Newer Policy
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Dispute Reference | `DSP-2026-000110` |
| Dispute Type | `Type C` (عدم استرداد المبلغ بعد إلغاء العميل) |
| Total Booking Amount | `2,000 SAR` |
| Policy Snapshot at Booking Time | `50% Refund` if cancelled > 48h prior |
| Newer Policy Updated by Lessor Post-Booking | `No Refund` (`لا يوجد استرداد`) |
| Expected Refund Calculation | `1,000 SAR` (50% of 2,000 SAR) |

# Preconditions
1. Customer booked a chalet with total `2,000 SAR` when cancellation policy was 50% refund.
2. Lessor later changed the chalet cancellation policy to "No Refund".
3. Customer cancelled within the eligible window, but lessor refused to refund citing the newer policy.
4. Customer opened Type C dispute `DSP-2026-000110`.

# Steps
1. In Support Console, open Type C dispute `DSP-2026-000110`.
2. Inspect the booking snapshot data presented to support staff.
3. Compare the policy captured at booking time versus the current lessor listing policy.
4. Calculate the refund amount based on the booking snapshot.
5. Record the decision ordering the calculated refund.

# Expected Result
1. Support view explicitly displays and enforces the cancellation policy saved in the booking snapshot at creation time (`50% refund`).
2. The newer policy ("No Refund") updated by the lessor after booking is strictly disregarded.
3. The calculated refund amount is set to `1,000 SAR`.
4. The lessor is obliged to refund `1,000 SAR` within 3 business days.

# Notes
- Requirement: UF-15 Alternative Flows A5, A6 ("Type C: Refund per the cancellation policy saved in the booking. Example: 2,000 SAR at 50% = 1,000 SAR. A newer policy is not applied").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
