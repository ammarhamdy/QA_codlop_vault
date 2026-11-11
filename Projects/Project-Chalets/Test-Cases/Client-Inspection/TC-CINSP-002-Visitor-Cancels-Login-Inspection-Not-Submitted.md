---
tc_id: TC-CINSP-002
title: Verify Unauthenticated Visitor Canceling Login Does Not Submit Inspection Request
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Unauthenticated Visitor (Guest) |
| Target Chalet | `CHALET-RIYADH-101` (Status: Active/Published) |
| Target Action | «طلب معاينة» (Request Inspection) |

# Preconditions
1. Mobile application is open without any active session (guest mode).
2. The user is viewing the details of active listing `CHALET-RIYADH-101`.

# Steps
1. Tap «طلب معاينة» (Request Inspection) on the chalet details screen.
2. Verify that the login prompt / authentication screen is displayed.
3. Tap the "Back" or "Cancel" / "Dismiss" button on the authentication screen without logging in.
4. Observe the user's location, screen state, and database/network logs.

# Expected Result
1. The user returns to the Chalet Details screen (`SCR-CHALET-01`).
2. The user remains an unauthenticated guest.
3. No inspection request is created or sent to the backend.
4. No interested customer («عميل مهتم») record is logged.
5. No notification is dispatched to the lessor.
6. Lessor contact channels and exact map location remain hidden.

# Notes
- Verifies flow alternative `A2` negative path (user abandons authentication).
- Confirms privacy and data security: unauthenticated attempts never leak or create server records.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
