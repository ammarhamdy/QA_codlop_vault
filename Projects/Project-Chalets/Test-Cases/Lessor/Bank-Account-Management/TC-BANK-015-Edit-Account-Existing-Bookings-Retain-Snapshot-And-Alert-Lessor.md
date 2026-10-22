---
tc_id: TC-BANK-015
title: Edit Account - Existing Booking Retains Original Account Snapshot and Alerts Lessor on Bank Details Page
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | Account Data at Booking Creation | Account Data After Edit |
| ------ | -------------------------------- | ----------------------- |
| Bank Account ID | `ACC-01` (`SA0380000000608010167519`) | `ACC-01` (`SA0310000001234567890123`) |
| Booking #BK-1001 | Holds snapshot of `ACC-01` (`SA...7519`) | Must still show `SA...7519` to customer |
| Lessor Alert Location | Bank details page (Add & Edit pages) | Displays divergence alert banner |

# Preconditions
1. Lessor has Account A (`SA...7519`) assigned to Chalet X.
2. A customer has created a temporary booking (#BK-1001) on Chalet X using Account A.
3. Lessor is logged in.

# Steps
1. Navigate to "Bank Accounts", select Account A, and tap **"Edit"**.
2. Change the IBAN to a new valid account number (`SA...0123`) and complete OTP verification.
3. Log in as the customer who placed booking #BK-1001 and open the booking transfer details screen.
4. Log back in as the lessor and open the "Bank Accounts" / Edit Bank Details screen.
5. Attempt to dismiss or click through the alert banner.

# Expected Result
1. The customer's existing booking (#BK-1001) retains its immutable snapshot of Account A as it existed at booking creation time (`SA...7519`).
2. The customer transfer details screen continues to display the original snapshot.
3. On the lessor's bank details / add & edit screen, the system displays an alert indicating that active bookings are tied to a previous version of the account.
4. Per business rules, the alert cannot be dismissed and does not reveal the historical snapshot details directly from the banner.

# Notes
- Requirement: UF-72 (Alternative Flow A1), UF-78 (Steps 4-5, Notes - closed questions: alert shown on add & edit bank details page, cannot be dismissed).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
