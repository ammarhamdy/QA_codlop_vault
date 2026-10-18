---
tc_id: TC-BKG-056
title: Verify Customer Penalty Progression from 12-Month Warning to Permanent Account Suspension
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
| Customer Account | `CUST-9013` |
| First Penalty Type | `Warning` (`تحذير`) - 12-month expiry |
| Second Penalty Type | `Account Suspension` (`إيقاف الحساب`) - Never expires with time |
| First Penalty Date | `2025-10-18` |

# Preconditions
1. Admin user has authorization to apply penalties.
2. Customer `CUST-9013` is an active customer.

# Steps
1. Apply 1st penalty to `CUST-9013` for repeated false disputes with reason.
2. Verify customer penalty tier is set to **Warning** (`تحذير`).
3. Case A: Fast-forward time past 12 months (e.g. `2026-10-19`) with no further violations -> inspect warning status.
4. Case B: Within the 12-month period, customer commits a 2nd proven violation -> Admin applies 2nd penalty with reason.
5. Inspect the updated customer penalty tier and account access state.
6. Attempt to log in or create bookings with the suspended account.

# Expected Result
1. The first penalty assigned is a **Warning** (`تحذير`).
2. Under Case A, the warning automatically expires after 12 months if no additional violations occur.
3. Under Case B, when a customer with an active warning violates again, the penalty escalates to **Account Suspension** (`إيقاف الحساب`).
4. The account suspension never expires with time.
5. The suspended customer is blocked from initiating bookings or accessing restricted services.

# Notes
- Requirement: UF-05 Alternative Flows A1 and A2 ("First penalty: Warning. Expires after 12 months with no violations. Customer already has a warning and violates again: Account suspension. Never expires with time").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
