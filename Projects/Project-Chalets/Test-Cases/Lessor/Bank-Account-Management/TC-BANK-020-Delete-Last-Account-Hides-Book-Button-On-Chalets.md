---
tc_id: TC-BANK-020
title: Delete Last Remaining Bank Account - Displays Warning Dialog and Hides Book Button on All Chalets
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Total Saved Accounts Before Action | `1` (Sole remaining account) |
| Dialog Warning Text | `سيختفي زر الحجز من أماكنك` |
| OTP Code | `1234` |
| Total Saved Accounts After Action | `0` |

# Preconditions
1. Lessor has exactly one bank account left in their profile.
2. Lessor has published chalets displaying the "Book" button.
3. No active booking is awaiting transfer on this last account.

# Steps
1. Navigate to "Bank Accounts".
2. Tap **"Delete"** on the sole remaining bank account.
3. Observe the confirmation dialog text.
4. Tap **Confirm**.
5. Enter the valid OTP code received on the registered mobile.
6. Check the Bank Accounts screen and the Lessor Dashboard.
7. Open the customer-facing view of the lessor's chalets.

# Expected Result
1. The deletion confirmation dialog explicitly alerts the lessor with: `سيختفي زر الحجز من أماكنك`.
2. After entering the correct OTP, the account is deleted.
3. The lessor's bank account count drops to zero.
4. The empty state prompt (`أضف حسابًا ليظهر للعملاء عند الحجز. بدون حساب لا يظهر زر الحجز`) and dashboard warning bar (`أضف حسابًا بنكيًا ليتمكن العملاء من الحجز`) appear immediately.
5. The **"Book"** (`احجز`) button is immediately hidden on all chalets owned by this lessor.

# Notes
- Requirement: UF-73 (Alternative Flow A1; Diagram Steps C->E->M), UF-77.

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
