---
tc_id: TC-BKG-051
title: Verify Lessor Is Notified Within 60 Seconds of Successful Receipt Upload with Full Details
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
| Booking Reference | `BKG-2026-000611` |
| Customer Name | `سالم أحمد العتيبي` |
| Place Name | `شاليه الفيروز` |
| Booking Date | `2026-11-15` |
| Transfer Amount | `1,800 SAR` |
| Maximum Notification Latency | `<= 60 Seconds` |
| Expected Notification Text | `{العميل} حجز {المكان} {التاريخ} ورفع إيصال {المبلغ}. تحقق من وصوله ثم أكّد` |

# Preconditions
1. Customer has an active booking `BKG-2026-000611`.
2. Lessor has an active account with push notifications and in-app messaging configured.

# Steps
1. As the Customer, upload receipt and tap **"Send Receipt"** at timestamp `T0`.
2. Measure the time elapsed until the lessor receives the notification on their device.
3. Inspect the notification payload and text on the lessor device.
4. Tap the notification and verify the landing destination.

# Expected Result
1. The lessor receives the notification within 60 seconds of successful receipt submission (`T0 + 60s`).
2. The notification explicitly includes: Customer Name (`سالم أحمد العتيبي`), Place Name (`شاليه الفيروز`), Booking Date (`2026-11-15`), and Transfer Amount (`1,800 SAR`).
3. Tapping the notification opens the booking confirmation view directly with the receipt rendered for verification.

# Notes
- Requirement: UF-02 Main Flow Step 10 and UF-04 Entry Point ("Notifies the lessor within 60 seconds with customer, place, date, and amount").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
