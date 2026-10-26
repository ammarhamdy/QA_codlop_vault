---
tc_id: TC-ACPT-001
title: Receipt Uploaded Notification Dispatched to Lessor with Booking Details
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Name | `سلطان المطيري` |
| Place / Chalet Name | `شاليه الواحة الهادئة` |
| Booking Date | `2026-11-05` |
| Transfer Amount | `1,500 ر.س` |
| Expected Notification Text | `سلطان المطيري حجز شاليه الواحة الهادئة 2026-11-05 ورفع إيصال 1,500 ر.س. تحقق من وصوله ثم أكّد` |

# Preconditions
1. The user is an accepted and active lessor.
2. A customer has placed a temporary booking on the lessor's chalet.
3. The customer completes uploading their bank transfer receipt (UF-02).

# Steps
1. Simulate or execute the customer uploading a valid payment receipt for booking on `2026-11-05`.
2. Inspect the notifications delivered to the lessor (push notification, in-app notification center).
3. Verify the message structure, dynamic parameters, and Arabic text phrasing.
4. Tap the notification on the lessor device.

# Expected Result
1. The lessor receives an immediate notification upon customer receipt upload.
2. The notification explicitly matches the required format: `«{العميل} حجز {المكان} {التاريخ} ورفع إيصال {المبلغ}. تحقق من وصوله ثم أكّد»`.
3. Tapping the notification deep-links the lessor directly to the booking details page for that specific booking.

# Notes
- Requirement: UF-80 (Main Flow Step 1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
