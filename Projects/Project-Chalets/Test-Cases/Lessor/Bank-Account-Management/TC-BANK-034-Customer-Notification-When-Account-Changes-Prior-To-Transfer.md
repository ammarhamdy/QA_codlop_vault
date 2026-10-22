---
tc_id: TC-BANK-034
title: Booking Snapshot - Customer Notification When Lessor Modifies Account Prior to Transfer
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
| Booking ID | `#BK-202` (Status: Temporary Booking awaiting transfer) |
| Action | Lessor updates or modifies the chalet's assigned bank account |
| Target Recipient | Customer holding booking `#BK-202` |

# Preconditions
1. A customer has placed a temporary booking on a chalet.
2. The booking has not yet been paid/transferred by the customer.
3. The lessor modifies or reassigns the bank account for this chalet.

# Steps
1. As the lessor, navigate to "Bank Accounts" or "Place and Ad Details".
2. Modify the details of the bank account or assign a different account to the booked chalet.
3. Successfully complete the OTP verification to commit the change.
4. Check notifications and status on the customer's device/account.

# Expected Result
1. The customer holding the pending booking is actively notified (via push notification / in-app message) that the bank account details have been updated before transferring payment.
2. The customer is alerted to review the updated transfer details to prevent sending funds to an outdated or changed account.

# Notes
- Requirement: UF-78 (Notes - closed questions: "Is the customer notified if the account changes before they transfer? Yes it should be notified").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
