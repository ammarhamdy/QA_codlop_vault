---
tc_id: TC-ACPT-017
title: Reject Booking - Standard Reason Selection and Confirmation Dialog Flow
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Action Button | Tap "Reject" (`رفض`) |
| Standard Reasons Available | - `لم يصل المبلغ` (Amount not received)<br>- `المبلغ غير مكتمل` (Amount insufficient)<br>- `الإيصال غير واضح` (Receipt unclear)<br>- `أخرى` (Other) |
| Selected Reason | `لم يصل المبلغ` (Amount not received) |
| Confirmation Dialog | Required before final rejection submission |

# Preconditions
1. Lessor is viewing a booking in "Awaiting Lessor Confirmation".
2. No dispute is open on the booking.

# Steps
1. Tap the **"Reject"** (`رفض`) button.
2. Verify that the list of rejection reasons is displayed.
3. Select the radio option `لم يصل المبلغ` (Amount not received).
4. Tap **"Submit Rejection"** / Proceed.
5. Verify that a confirmation dialog appears before final execution.
6. Confirm the dialog.

# Expected Result
1. The rejection reasons list correctly presents all standard configured options.
2. Selecting a predefined reason does not mandate entering extra details.
3. A confirmation dialog appears asking the lessor to verify the rejection decision before final submission.
4. Confirming updates the booking to "Rejected".

# Notes
- Requirement: UF-06 (Main Flow Steps 1-4; Notes - closed questions: "Is there a confirmation dialog before the rejection is submitted? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
