---
tc_id: TC-BKG-045
title: Verify Send Receipt Action Is Blocked When Transfer Date Is Missing
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000605` |
| Valid Receipt File | `payment_slip.jpg` |
| Transfer Date | Empty / Null |

# Preconditions
1. Customer has an active temporary booking `BKG-2026-000605`.
2. Valid receipt file is selected.
3. Transfer date field has not been filled.

# Steps
1. On the upload receipt screen, attach `payment_slip.jpg`.
2. Leave the "Transfer Date" (`تاريخ التحويل`) field empty.
3. Attempt to tap the **"Send Receipt"** (`إرسال الإيصال`) button.
4. Attempt to trigger the receipt upload API directly without providing the `transfer_date` attribute.

# Expected Result
1. In the UI, the "Send Receipt" button remains disabled, or tapping it triggers a validation highlight indicating that the transfer date is mandatory.
2. The submission is blocked; no upload request is dispatched.
3. If invoked via direct API, the backend returns a 422 Unprocessable Entity / 400 Bad Request indicating that `transfer_date` is required.
4. The booking status remains "Temporary" and the countdown timer continues.

# Notes
- Requirement: UF-02 Error Flow E4 ("Transfer date is missing: 'Send Receipt' is blocked until the date is entered").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
