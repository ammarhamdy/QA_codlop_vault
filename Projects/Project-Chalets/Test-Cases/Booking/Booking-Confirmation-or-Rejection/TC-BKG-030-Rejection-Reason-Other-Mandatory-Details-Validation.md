---
tc_id: TC-BKG-030
title: Verify Rejection Reason Other Requires Non-Empty Details Text
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000514` |
| Rejection Reason | `أخرى` (Other) |
| Invalid Input 1 | Empty string (`""`) |
| Invalid Input 2 | Whitespace only (`"     "`) |
| Valid Input | `تم إيداع المبلغ في حساب بنكي خاطئ لا يخص هذا الحجز` |

# Preconditions
1. Booking `BKG-2026-000514` is in status "Awaiting Lessor Confirmation".
2. Lessor is on the rejection modal dialog.

# Steps
1. Tap **"Reject"** (`رفض الحجز`) on booking `BKG-2026-000514`.
2. Select reason **"أخرى"** (Other) from the dropdown/radio options.
3. Observe that a details text box appears.
4. Leave the details input field blank and attempt to confirm the rejection.
5. Enter whitespace characters only into the details text box and attempt to confirm.
6. Enter valid explanation: `تم إيداع المبلغ في حساب بنكي خاطئ لا يخص هذا الحجز`.
7. Tap confirm.

# Expected Result
1. When "Other" is selected, the details text field is marked mandatory.
2. At Steps 4 and 5, confirming rejection is blocked, showing a validation error requiring the user to provide details.
3. At Step 7, valid input is accepted, the rejection proceeds, and status updates to "Rejected" (`مرفوض`).
4. The custom detail text is recorded alongside the rejection reason.

# Notes
- Requirement: UF-06 Steps 2–3 and Error Flow E2 ("'Other' selected with empty details: Rejection blocked").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
