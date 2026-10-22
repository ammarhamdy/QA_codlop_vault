---
tc_id: TC-BANK-033
title: Booking Snapshot - Accurate Account Capture on Temporary Booking Creation (Specific Chalet vs Default)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Chalet Tested | Account Configuration | Expected Account Snapshot on Booking |
| ------------- | --------------------- | ----------------------------------- |
| Chalet Alpha | Explicitly assigned to Account 2 (Alinma Bank) | Account 2 details captured on creation |
| Chalet Beta | No specific account assigned | Account 1 (Default - Al Rajhi) captured on creation |

# Preconditions
1. Lessor has Account 1 (Default) and Account 2 configured.
2. Chalet Alpha is specifically mapped to Account 2.
3. Chalet Beta is unassigned (falls back to default).
4. Customer is logged in and browses the chalets.

# Steps
1. As the customer, navigate to Chalet Alpha and tap **"Book Temporarily"** (`احجز مبدئياً` / UF-01).
2. Open the booking transfer details screen (UF-02).
3. Observe the bank account shown for transferring the booking amount.
4. As the customer, navigate to Chalet Beta and tap **"Book Temporarily"**.
5. Open the transfer details screen for the second booking.
6. Observe the bank account shown.

# Expected Result
1. When booking Chalet Alpha, the system creates an immutable copy of Chalet Alpha's specifically assigned account (Account 2) and binds it to the booking.
2. When booking Chalet Beta, the system creates an immutable copy of the lessor's active default account (Account 1) and binds it to the booking.
3. The customer sees the exact respective bank details in the transfer instructions.

# Notes
- Requirement: UF-78 (Main Flow Steps 1-3, Alternative Flow A1).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
