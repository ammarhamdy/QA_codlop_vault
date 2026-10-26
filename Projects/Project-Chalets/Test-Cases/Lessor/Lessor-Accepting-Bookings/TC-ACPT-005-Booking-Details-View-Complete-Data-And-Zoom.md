---
tc_id: TC-ACPT-005
title: Booking Details View Displays Complete Customer, Financial, and Receipt Data
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Expected Content Display |
| ----- | ------------------------ |
| Customer Name | Full customer name as registered (e.g., `أحمد عبد الله الغامدي`) |
| Customer Number | Customer's registered phone number (`05XXXXXXXX`) |
| Booking Amount | Formatted amount in SAR (e.g., `1,200 ر.س`) |
| Receipt Image | Full thumbnail with interactive zoom / magnifier capability |
| Saved Account | Last 4 digits of the account snapshot captured at booking creation (e.g., `7519`) |
| Confirmation Counter | Active countdown timer with color status |

# Preconditions
1. A booking in status "Awaiting Lessor Confirmation" exists.
2. The customer uploaded a valid image receipt during booking creation.

# Steps
1. Navigate to "My Places' Bookings" -> "Awaiting Your Confirmation".
2. Tap on the booking card to open the booking details screen.
3. Verify the presence and correctness of:
   - Customer Name.
   - Customer Phone Number.
   - Booking Amount.
   - Last 4 digits of the saved bank account.
   - Confirmation countdown counter.
4. Tap or pinch the payment receipt image to test the zoom capability.

# Expected Result
1. All six data elements are clearly displayed.
2. The customer's registered phone number is explicitly visible to the lessor on this review screen.
3. The bank account shown reflects the last 4 digits of the snapshot saved at booking creation time (UF-78).
4. Tapping or pinching the receipt opens the high-resolution zoom view.

# Notes
- Requirement: UF-80 (Main Flow Step 5; Notes - closed questions: "item 4 says 'his number'... is it customer phone? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
