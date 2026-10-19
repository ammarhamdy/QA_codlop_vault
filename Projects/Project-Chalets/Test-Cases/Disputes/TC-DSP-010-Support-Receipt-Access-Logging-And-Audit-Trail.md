---
tc_id: TC-DSP-010
title: Verify Support Staff Can Only View Transfer Receipt When Dispute Is Open with Mandatory View Logging
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
| Booking Without Dispute | `BKG-2026-000810` (Receipt uploaded, no dispute open) |
| Booking With Dispute | `BKG-2026-000811` (Dispute `DSP-2026-000105` is Open) |
| Support Officer | `support_agent_01` |

# Preconditions
1. Support agent `support_agent_01` is authenticated in the internal Support Console.
2. Booking `BKG-2026-000810` has a receipt but has never had a dispute opened.
3. Booking `BKG-2026-000811` has an active dispute (`DSP-2026-000105`).

# Steps
1. As `support_agent_01`, navigate to `BKG-2026-000810` and attempt to view the payment receipt.
2. Observe access control response.
3. Navigate to `DSP-2026-000105` (linked to `BKG-2026-000811`) and open the payment receipt.
4. Verify receipt opens successfully.
5. In the internal security audit log database, query all entries for `support_agent_01` and `BKG-2026-000811`.

# Expected Result
1. Step 1 is strictly blocked: Support staff cannot view customer payment receipts when no active dispute exists on the booking (returns 403 Forbidden).
2. Step 3 succeeds: Receipt viewing is permitted because a dispute is open.
3. Every single receipt view action by support staff is logged in the audit trail, capturing: support user ID (`support_agent_01`), dispute ID (`DSP-2026-000105`), booking ID, IP address, and timestamp.

# Notes
- Requirement: UF-15 Step 2 and Error Flow E2 ("Allows receipt viewing only because a dispute is open, and logs every view. Support tries to view a receipt with no open dispute: Not allowed").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
