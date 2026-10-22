---
tc_id: TC-PKG-019
title: Verify Successful Payment Gateway Transaction Activates Subscription Instantly
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Payment Method | Payment Gateway (e.g., Mada, Apple Pay, Credit Card) |
| Transaction Result | Success (`CAPTURED` / `PAID`) |
| Package Duration | 30 days |

# Preconditions
1. Payment gateway is enabled for the lessor's platform.
2. Lessor selects package and chooses the online payment gateway.
3. Payment request is in `Awaiting Payment` status.

# Steps
1. On the payment gateway checkout sheet, enter valid payment credentials and submit payment.
2. Observe payment processing by the gateway.
3. Observe post-payment redirection and screen state.
4. Verify payment request status in database and app.
5. Verify subscription activation and issued payment document.

# Expected Result
1. The payment gateway processes and authorizes the transaction successfully.
2. Payment request status transitions immediately to `Paid` (`مدفوع`).
3. The lessor's subscription is activated immediately with no manual review required.
4. The payment document (`RCPT-` or `INV-` depending on invoice key) is generated and made available for download.

# Notes
- Requirement: UF-45 Main Flow Steps 1 to 4.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
