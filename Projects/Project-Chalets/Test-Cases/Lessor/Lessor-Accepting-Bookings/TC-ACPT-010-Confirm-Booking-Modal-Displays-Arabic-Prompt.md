---
tc_id: TC-ACPT-010
title: Confirm Booking - Confirmation Modal Displays Required Arabic Verification Prompt
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
| Booking Amount | `2,400` |
| Saved Account Last 4 Digits | `7519` |
| Expected Confirmation Dialog Text | `هل وصلك 2,400 ر.س في حسابك 7519؟ بعد التأكيد يُحجز الموعد للعميل` |
| Primary Action Button | `تأكيد` (Confirm) |
| Secondary Action Button | `إلغاء` / Close |

# Preconditions
1. Lessor is viewing the details of a booking in "Awaiting Lessor Confirmation" status.
2. The booking has a total amount of 2,400 SAR and is tied to saved account snapshot ending in `7519`.
3. No active dispute is open on the booking.

# Steps
1. Tap the button **"Confirm Amount Received"** (`تأكيد استلام المبلغ`).
2. Observe the confirmation modal that appears.
3. Verify the prompt text against the required format.

# Expected Result
1. A confirmation modal appears preventing accidental one-tap confirmations.
2. The modal dialog contains the exact text: `هل وصلك 2,400 ر.س في حسابك 7519؟ بعد التأكيد يُحجز الموعد للعميل`.
3. The prompt explicitly informs the lessor of the consequence: confirming will formally book the slot for the customer.

# Notes
- Requirement: UF-04 (Main Flow Step 3).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
