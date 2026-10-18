---
tc_id: TC-BKG-074
title: Verify Step 1 Warning Is Logged and Automatically Expires After 12 Months Without Violations
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor ID | `LESSOR-3013` |
| Applied Penalty Step | `Step 1: Warning` (`تحذير`) |
| Imposed Date | `2025-10-18` |
| Check Date 1 (11 months) | `2026-09-18` |
| Check Date 2 (12 months + 1 day) | `2026-10-19` |

# Preconditions
1. Support applies Step 1 (Warning) to `LESSOR-3013` on `2025-10-18`.
2. The warning is logged in the lessor's penalty record.
3. No further infractions or disputes occur for `LESSOR-3013`.

# Steps
1. Verify the initial state of the warning: status should be "Active" and visible in admin profile.
2. Advance system date to `2026-09-18` (11 months elapsed); verify penalty status and whether listing is affected.
3. Advance system date to `2026-10-19` (12 months elapsed).
4. Run the scheduled penalty cleanup job.
5. Inspect the status of the warning in the lessor's penalty log.
6. Trigger a new penalty proposal evaluation for `LESSOR-3013`.

# Expected Result
1. The warning does not suspend ads or accounts; the lessor continues operations normally.
2. At 11 months, the warning remains Active.
3. After 12 months with no violations, the warning automatically transitions to **"Expired"** (`منتهية`).
4. Any new subsequent violation treats the lessor as having no active prior penalties (re-evaluates from Step 1).

# Notes
- Requirement: UF-11 Alternative Flow A1 ("Step 1: Warning: Logged. Expires after 12 months with no violations and shows as 'Expired'").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
