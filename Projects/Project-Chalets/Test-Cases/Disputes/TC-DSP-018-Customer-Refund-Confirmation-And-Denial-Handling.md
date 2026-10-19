---
tc_id: TC-DSP-018
title: Verify Customer Confirmation Closes Dispute and Denial Returns Dispute to Support Review
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
| Dispute Reference A | `DSP-2026-000113` (Customer confirms receipt) |
| Dispute Reference B | `DSP-2026-000114` (Customer denies receipt) |
| Action Button 1 | **"I received the amount"** (`استلمت المبلغ`) |
| Action Button 2 | **"Not received"** (`لم أستلم`) |

# Preconditions
1. Both disputes (`DSP-2026-000113` and `DSP-2026-000114`) are in status **"Awaiting Customer Confirmation"** after lessor recorded refund.
2. Customers are authenticated and on the respective dispute status screens.

# Steps
1. On dispute `DSP-2026-000113`, as Customer, tap **"I received the amount"** (`استلمت المبلغ`).
2. Verify updated dispute status and booking resolution.
3. On dispute `DSP-2026-000114`, as Customer, tap **"Not received"** (`لم أستلم`).
4. Verify updated dispute status and queue placement.
5. In Support Console, check the dispute queue.

# Expected Result
1. Tapping "I received the amount" on `DSP-2026-000113` immediately closes the dispute with status **"Closed"** (`مغلق`).
2. Tapping "Not received" on `DSP-2026-000114` does **not** close the dispute; instead, status returns to **"Under Review"** (`قيد المراجعة`) for Support re-investigation.
3. Support receives an alert indicating the customer contested the refund recording.

# Notes
- Requirement: UF-16 Step 5 and Alternative Flow A1 ("Customer taps 'Not received': Dispute returns to support for review, not closed").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
