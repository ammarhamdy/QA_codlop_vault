---
tc_id: TC-PKG-015
title: Verify Finance Rejection with Predefined Standard Reasons
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Predefined Rejection Reason | Arabic Reason Text | Expected Notification Text |
| --------------------------- | ------------------ | -------------------------- |
| Amount not received | لم يتم استلام المبلغ في الحساب | `«رُفض إيصالك: لم يتم استلام المبلغ في الحساب»` |
| Amount does not match | المبلغ المحول غير مطابق للمبلغ المطلوب | `«رُفض إيصالك: المبلغ المحول غير مطابق للمبلغ المطلوب»` |
| Receipt unclear | صورة الإيصال غير واضحة أو غير مكتملة | `«رُفض إيصالك: صورة الإيصال غير واضحة أو غير مكتملة»` |

# Preconditions
1. Payment request `PAY-2026-000108` is in `Awaiting Approval` status.
2. Finance admin verifies bank account and discovers transferred amount does not match package price.

# Steps
1. In Finance admin view, open `PAY-2026-000108`.
2. Click **Reject** (`رفض الإيصال`).
3. Select predefined reason: `المبلغ المحول غير مطابق للمبلغ المطلوب`.
4. Confirm the rejection.
5. In lessor mobile app, observe push and in-app notifications.
6. Open "Payment Request Status" as the lessor.

# Expected Result
1. The payment request status updates to `Rejected` (`مرفوض`).
2. The subscription is NOT activated.
3. The lessor receives an in-app and push notification: `«رُفض إيصالك: المبلغ المحول غير مطابق للمبلغ المطلوب»`.
4. In "Payment Request Status", the request displays the rejection reason with active buttons to either **"Upload New Receipt"** (`رفع إيصال جديد`) or **"Cancel"** (`إلغاء الطلب`).

# Notes
- Requirement: UF-44 Alternative Flow A1.
- Rejection does not carry an account penalty.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
