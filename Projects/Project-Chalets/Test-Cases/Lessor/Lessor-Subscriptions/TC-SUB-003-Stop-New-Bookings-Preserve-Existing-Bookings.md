---
tc_id: TC-SUB-003
title: Verify System Blocks New Bookings While Preserving Existing Confirmed and Pending Bookings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Booking ID | Booking Status | Check-in Date | Expected Post-Expiry Behavior |
| ---------- | -------------- | ------------- | ----------------------------- |
| `BK-5501` | `Confirmed` (`مؤكد`) | Next Week | Remains valid, accessible to client & lessor |
| `BK-5502` | `Pending` (`قيد الانتظار`) | Next Week | Lessor can confirm, reject, or cancel |
| New Booking Attempt | N/A | - | Strictly blocked (Chalet not bookable) |

# Preconditions
1. Lessor has an active booking `BK-5501` (Confirmed) and `BK-5502` (Pending) on chalet `AD-101`.
2. Lessor's subscription expires.

# Steps
1. As a customer, attempt to navigate to chalet `AD-101` and initiate a new temporary booking.
2. As the client holding confirmed booking `BK-5501`, open booking details in the mobile app.
3. As the lessor, open "Bookings Management" (`إدارة الحجوزات`) and inspect `BK-5501` and `BK-5502`.
4. As the lessor, attempt to confirm or reject pending booking `BK-5502`.

# Expected Result
1. New booking attempts for the chalet are completely blocked (ad is hidden from discovery, direct checkout blocked).
2. Existing confirmed booking `BK-5501` remains fully intact; client can view check-in details, directions, and lessor contact.
3. The lessor retains full ability to manage existing bookings (confirm, reject, or cancel) per standard booking lifecycle rules.
4. Old bookings and calendar reservations are unaffected by subscription expiry.

# Notes
- Requirement: UF-57 Main Flow Steps 3 & 6 & Notes (Closed question: "What happens to the calendar and the ad's visibility to customers with confirmed bookings? Continue the booking as it is, old bookings not affected").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
