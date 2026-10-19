---
tc_id: TC-DSP-012
title: Verify Type A Dispute Blocks Force-Confirm and Mandates Full Refund When Slot Is Occupied
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
| Dispute Reference | `DSP-2026-000107` (Type A) |
| Original Booking | `BKG-2026-000812` (Slot Date: `2026-11-20`) |
| Intervening Booking | `BKG-2026-000813` (Confirmed by another customer on `2026-11-20`) |
| Full Refund Mandated | `1,800 SAR` within 3 business days |
| Expected System Block Message | `لا يمكن التأكيد: الموعد محجوز لحجز آخر` |

# Preconditions
1. In Type A dispute `DSP-2026-000107`, support verifies that the customer transferred the amount correctly (Customer is right).
2. However, the slot for `2026-11-20` was released upon original rejection and subsequently confirmed by another customer (`BKG-2026-000813`).
3. Support agent attempts to adjudicate the dispute.

# Steps
1. In Support Console, select outcome: "Customer is right".
2. Attempt to trigger the **"Force-Confirm Booking"** (`تأكيد الحجز بالقوة`) action.
3. Observe system validation and error message.
4. Select the alternate resolution: Full Refund.
5. Record decision and submit.

# Expected Result
1. The system blocks force-confirmation because the slot is already occupied, displaying the exact error: `«لا يمكن التأكيد: الموعد محجوز لحجز آخر»`.
2. The platform mandates that the lessor must refund the full amount (`1,800 SAR`) to the customer within 3 business days.
3. Dispute status transitions to **"Awaiting Refund"** with calculated due date stored.
4. Both parties are notified of the decision and refund requirement.

# Notes
- Requirement: UF-15 Alternative Flows A1, A2 ("Type A, customer is right, slot is booked by another customer: Force-confirm blocked: «لا يمكن التأكيد: الموعد محجوز لحجز آخر». Lessor must refund in full within 3 business days").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
