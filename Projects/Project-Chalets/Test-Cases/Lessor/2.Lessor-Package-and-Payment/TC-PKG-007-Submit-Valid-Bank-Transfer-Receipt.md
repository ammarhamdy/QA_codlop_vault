---
tc_id: TC-PKG-007
title: Verify Successful Submission of Bank Transfer Receipt and Status Transition
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
| Receipt File | `transfer_receipt.pdf` (2.5 MB, valid PDF) |
| Transfer Date | Today's Date (e.g., `2026-10-21`) |
| Payer Name | `شركة السعادة للاستثمار` (23 characters, $\le$ 80) |
| Transfer Note | `سداد اشتراك باقة النخبة للربع الأول` (36 characters, $\le$ 500) |
| Success Message Pattern | `«استلمنا إيصالك PAY-2026-000103 وسنراجعه خلال 24 ساعة»` |

# Preconditions
1. Payment request `PAY-2026-000103` is in `Awaiting Payment` status.
2. Lessor has completed transfer outside the app.

# Steps
1. On the upload receipt screen, tap upload and select `transfer_receipt.pdf`.
2. Select today's date in the date picker.
3. Enter payer name `شركة السعادة للاستثمار`.
4. Enter transfer note `سداد اشتراك باقة النخبة للربع الأول`.
5. Tap **Submit** (`إرسال الإيصال`).
6. Observe the confirmation message.
7. Navigate to "Payment Request Status" (`حالة طلب الدفع`).

# Expected Result
1. The receipt file is successfully attached and validated.
2. Status transitions from `Awaiting Payment` to `Awaiting Approval` (`بانتظار الاعتماد`).
3. Confirmation message is displayed: `«استلمنا إيصالك PAY-2026-000103 وسنراجعه خلال {المهلة}»`.
4. "Payment Request Status" displays the request with status `Awaiting Approval` and review SLA timeframe.

# Notes
- Requirement: UF-43 Main Flow Steps 3 to 6.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
