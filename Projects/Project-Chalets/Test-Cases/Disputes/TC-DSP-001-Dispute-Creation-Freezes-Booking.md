---
tc_id: TC-DSP-001
title: Verify Successful Dispute Creation Freezes Booking and Dispatches Notifications Within 60 Seconds
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000801` |
| Selected Dispute Type | `Type A` (تحويل لم يُعترف به) |
| Description Text | `تم تحويل كامل المبلغ المطلوب وقدره 1500 ريال عبر مصرف الراجحي ولكن المؤجر يدعي عدم الاستلام` (91 characters) |
| Evidence Attached | `bank_receipt_signed.pdf` (1.2 MB) |
| Maximum Notification Latency | `<= 60 Seconds` |

# Preconditions
1. Booking `BKG-2026-000801` had a receipt uploaded and is within 7 days of scheduled check-out.
2. Booking status is not "Timed Out".
3. No active dispute exists on this booking.
4. Customer is logged in to the customer mobile application.

# Steps
1. Navigate to booking details for `BKG-2026-000801`.
2. Tap the **"Open Dispute"** (`فتح نزاع`) button.
3. On the dispute form, select Dispute Type: **Type A** (`تحويل لم يُعترف به`).
4. Enter the problem description (`تم تحويل كامل المبلغ المطلوب وقدره 1500 ريال...`).
5. Attach evidence file `bank_receipt_signed.pdf`.
6. Tap Submit at timestamp `T0`.
7. Observe dispute creation confirmation on screen.
8. Check the booking status and action buttons on both Customer and Lessor apps.
9. Measure notification delivery timestamp to Lessor and Support.

# Expected Result
1. The dispute is created with a unique identifier formatted as `DSP-YYYY-NNNNN` (e.g. `DSP-2026-00001`) with status **Open**.
2. The underlying booking is immediately frozen; only a support decision can update its status.
3. Both Support and the Lessor receive notifications within 60 seconds (`T0 + 60s`).
4. The Lessor UI displays only the count of evidence items uploaded (1 file) and strictly prevents the Lessor from opening or previewing the customer's attached evidence.

# Notes
- Requirement: UF-08 Main Flow Steps 1–8.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
