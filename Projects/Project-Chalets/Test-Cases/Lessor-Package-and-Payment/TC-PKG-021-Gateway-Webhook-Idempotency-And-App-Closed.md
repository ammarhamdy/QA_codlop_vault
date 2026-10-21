---
tc_id: TC-PKG-021
title: Verify Gateway Webhook Idempotency and Background Payment Completion
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
| Webhook Event Type | `payment.succeeded` |
| Payment Request ID | `PAY-2026-000115` |
| Duplicate Delivery | 2 identical webhook requests delivered within 30 seconds |

# Preconditions
1. Lessor initiates payment on the gateway for `PAY-2026-000115`.
2. Lessor completes payment on the bank authentication screen (3D Secure), but closes or terminates the app before returning to the merchant URL.

# Steps
1. Simulate app termination immediately upon bank 3D Secure approval.
2. Verify delivery of server-to-server webhook notification from payment gateway to platform backend.
3. Observe backend handling of the server notice.
4. Send an identical duplicate `payment.succeeded` webhook for `PAY-2026-000115`.
5. Check payment request status, subscription duration, and generated payment documents.

# Expected Result
1. The server-to-server notice successfully completes the transaction, setting status to `Paid` and activating the subscription even though the app was closed.
2. The duplicate webhook notice is handled idempotently: processed strictly once only.
3. The subscription duration is not doubled, and no duplicate payment document is issued.

# Notes
- Requirement: UF-45 Alternative Flows A2 & A3 ("App is closed before returning from the gateway -> The system relies on the gateway's server notice; A duplicate success notice arrives -> Processed once only").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
