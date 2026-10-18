---
tc_id: TC-BKG-044
title: Verify Receipt Upload File Size Limit Enforces 10 MB Boundary
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
| Booking Reference | `BKG-2026-000604` |
| Valid Size File (Lower/Equal Boundary) | `receipt_exact_10mb.pdf` (`10.0 MB` / `10,485,760 bytes`) |
| Invalid Size File (Upper Boundary Exceeded) | `receipt_oversized.pdf` (`10.1 MB` / `10,590,617 bytes`) |
| Max Permitted Size | `10 MB` |

# Preconditions
1. Customer has an active temporary booking `BKG-2026-000604` with remaining timer.
2. Two test files prepared: one exactly at 10.0 MB and one exceeding 10 MB (10.1 MB).

# Steps
1. Navigate to the receipt upload screen for `BKG-2026-000604`.
2. Select the oversized file `receipt_oversized.pdf` (`10.1 MB`).
3. Observe client validation and upload response.
4. Select the boundary-compliant file `receipt_exact_10mb.pdf` (`10.0 MB`).
5. Complete transfer date entry and submit.

# Expected Result
1. The 10.1 MB file is rejected with an error message stating that the file exceeds the maximum allowed size of 10 MB.
2. The user is allowed to select another file, and the countdown timer is unaffected.
3. The 10.0 MB file is accepted without size errors and successfully uploaded to the server.

# Notes
- Requirement: UF-02 Main Flow Step 5 and Error Flow E1 ("max 10 MB. File type is not allowed or size exceeds 10 MB: Upload rejected with a message, customer can pick another file").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
