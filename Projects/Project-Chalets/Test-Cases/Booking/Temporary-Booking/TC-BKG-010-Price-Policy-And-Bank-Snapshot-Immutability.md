---
tc_id: TC-BKG-010
title: Verify Snapshot Immutability of Price Cancellation Policy and Lessor Bank Details
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet / Place | `منتجع الواحة الخضراء` |
| Initial Price at Booking | `1,500 SAR` |
| Initial Cancellation Policy | `استرداد كامل قبل 48 ساعة` |
| Initial Bank Details | IBAN: `SA4420000001234567890123`, Bank: `Al Rajhi Bank` |
| Updated Lessor Price | `2,000 SAR` (modified by lessor post-booking) |
| Updated Lessor Policy | `لا يوجد استرداد` (modified post-booking) |
| Updated Lessor Bank | IBAN: `SA8810000009876543210987`, Bank: `SNB` |

# Preconditions
1. Customer is logged in and creates a temporary booking for `منتجع الواحة الخضراء`.
2. Temporary booking is successfully created with status "محجوز مؤقتًا" with the initial snapshot values.
3. Lessor updates the chalet price, policy, and bank account in their lessor portal after the customer's temporary booking creation.

# Steps
1. In the customer application, view the active temporary booking details screen.
2. Verify displayed amount due for transfer.
3. Verify displayed cancellation policy.
4. Verify displayed lessor bank details (beneficiary name, bank name, IBAN).
5. Compare the displayed details with the initial creation snapshot and the updated lessor profile.

# Expected Result
1. The temporary booking displays the exact price, cancellation policy, and bank details captured at creation time (`1,500 SAR`, `استرداد كامل قبل 48 ساعة`, `Al Rajhi Bank / SA44...`).
2. Subsequent edits made by the lessor do not alter the active booking snapshot.
3. The customer is held to the price and policy agreed upon at the time of booking.

# Notes
- Requirement: UF-01 Main Flow Step 6 and Functional Reference (الحجوزات Step 7 & Step 85).

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
