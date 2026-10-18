---
tc_id: TC-BKG-053
title: Verify Receipt Retention Rules 1-Year Auto-Deletion and Legal Hold Protection
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference A | `BKG-2026-000613` (No dispute, ended `2025-10-18`) |
| Booking Reference B | `BKG-2026-000614` (Dispute closed `2025-12-01`) |
| Booking Reference C | `BKG-2026-000615` (Legal hold placed by General Manager) |
| Standard Retention | `1 Year` from booking end or last dispute closure |

# Preconditions
1. Storage lifecycle purge worker / cron job is configured.
2. Booking A ended on `2025-10-18` (1 year ago today).
3. Booking B had a dispute that closed on `2025-12-01` (10 months ago).
4. Booking C ended over 1 year ago, but General Manager placed an active legal hold.

# Steps
1. Execute the retention and auto-deletion worker job on system date `2026-10-18`.
2. Check the receipt file and database record for Booking A (1 year elapsed from booking end).
3. Check the receipt file and database record for Booking B (1 year from dispute closure has NOT elapsed yet).
4. Check the receipt file and database record for Booking C (legal hold active).

# Expected Result
1. Booking A's receipt is permanently and automatically deleted (1 year reached from booking end).
2. Booking B's receipt is preserved (retention benchmark is 1 year from the last dispute close, whichever is later).
3. Booking C's receipt is preserved and protected from auto-deletion due to the active legal hold placed by the General Manager.

# Notes
- Requirement: UF-02 Notes ("Retention: 1 year after the booking ends or the last dispute closes (whichever is later), then auto-deleted, unless the General Manager places a legal hold").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
