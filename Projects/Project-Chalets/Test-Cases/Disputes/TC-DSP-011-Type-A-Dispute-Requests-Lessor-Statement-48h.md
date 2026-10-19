---
tc_id: TC-DSP-011
title: Verify Type A Dispute Automatically Transitions to Awaiting Statement and Starts 48-Hour Deadline
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
| Dispute Reference | `DSP-2026-000106` |
| Dispute Type | `Type A` (تحويل لم يُعترف به) |
| Statement Deadline Window | `48 Hours` from support request |

# Preconditions
1. Customer has opened a Type A dispute (`DSP-2026-000106`) on a rejected booking.
2. Support agent opens the dispute ticket in Support Console.

# Steps
1. In Support Console, open Type A dispute `DSP-2026-000106`.
2. Trigger the bank statement request action to the lessor.
3. Observe dispute status update.
4. Verify notification dispatched to the lessor.
5. In Lessor app, open the dispute and check the statement upload interface and deadline countdown.
6. Verify whether non-Type-A disputes (Types B, C, D) bypass this stage.

# Expected Result
1. For Type A, requesting a statement sets dispute status to **"Awaiting Statement"** (`بانتظار كشف الحساب`).
2. The lessor receives an urgent notification requiring an official bank statement covering the transfer date within 48 hours.
3. The 48-hour countdown timer begins and displays prominently on the lessor dashboard.
4. Disputes of Types B, C, and D remain in **"Under Review"** and do not transition to Awaiting Statement.

# Notes
- Requirement: UF-15 Step 3 and Lifecycle Diagram ("Type A only: requests an account statement covering the transfer date. Status Awaiting Statement. Notifies the lessor with a 48-hour deadline").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
