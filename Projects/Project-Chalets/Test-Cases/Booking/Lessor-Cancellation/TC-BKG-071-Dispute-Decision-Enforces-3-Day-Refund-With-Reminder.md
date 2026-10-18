---
tc_id: TC-BKG-071
title: Verify Dispute Decision Enforces 3-Business-Day Refund With 1-Day Prior Reminder
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
| Dispute Reference | `DSP-2026-000088` (Type B) |
| Obligation Ruling | Formal decision obliging lessor to refund in full |
| New Refund Window | `3 Business Days` from dispute decision date |
| Reminder Timing | Exactly `1 Business Day` before the new deadline |

# Preconditions
1. Customer opened a Type (B) dispute on an unrefunded cancelled booking.
2. Support reviews the dispute and issues a decision ordering the lessor to refund in full.

# Steps
1. In Support panel, issue the formal refund order decision on `DSP-2026-000088`.
2. Inspect the notification sent to the lessor.
3. Verify the new 3-business-day refund deadline established by the decision.
4. Advance system time to 1 business day before the new deadline.
5. Check lessor notification logs.

# Expected Result
1. The support decision explicitly obliges the lessor to refund the full booking amount within 3 business days.
2. A new 3-business-day countdown timer starts and displays on the lessor portal.
3. Exactly one business day before the new deadline expires, the system automatically sends an urgent reminder notification to the lessor.

# Notes
- Requirement: UF-10 Error Flows E2 and E3 ("Dispute is opened: A decision obliges the lessor to refund in full within 3 business days. One business day before the new deadline: Lessor receives a reminder").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
