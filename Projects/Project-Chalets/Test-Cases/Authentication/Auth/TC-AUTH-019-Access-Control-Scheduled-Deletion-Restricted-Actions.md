---
tc_id: TC-AUTH-019
title: Verify Access Restrictions on Booking, Payment, and Disputes for Scheduled Deletion Account
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Client Mobile | `0505555555` |
| Account Status | `مجدول للحذف` (Scheduled for Deletion, not restored upon login) |
| Target Actions | 1. Chalet Booking (`حجز شاليه`)<br>2. Booking Payment (`دفع الحجز`)<br>3. Open Dispute (`فتح نزاع`) |

# Preconditions
1. Client account has status "مجدول للحذف" (Scheduled for Deletion).
2. Client logs in without confirming restoration (or cancels the restoration prompt if dismissible).
3. Client is in a session with account status remaining "مجدول للحذف".

# Steps
1. Navigate to a chalet detail page and attempt to initiate a booking ("حجز شاليه").
2. Observe the system response.
3. If an existing pending booking/invoice exists, attempt to proceed to payment ("دفع الحجز").
4. Observe the system response.
5. Attempt to open a dispute on an existing booking ("فتح نزاع").
6. Observe the system response.
7. Attempt other general functions (browse search, view chalets, add to favorites).

# Expected Result
1. Attempting to book a chalet is blocked with the restriction message: «حسابك مجدول للحذف. استعد حسابك لتتمكن من المتابعة».
2. Attempting to pay for a booking is blocked with the restriction message: «حسابك مجدول للحذف. استعد حسابك لتتمكن من المتابعة».
3. Attempting to open a dispute is blocked with the restriction message: «حسابك مجدول للحذف. استعد حسابك لتتمكن من المتابعة».
4. General functions (such as browsing, searching, and viewing favorites) remain accessible.

# Notes
- Verifies business rule: `إذا جدول حذف حسابه فلا يستطيع الحجز أو الدفع أو فتح نزاع حتى يستعيده`.
- Table rules:
  - `حجز شاليه`: تسجيل الدخول + حالة الحساب «نشط»
  - `دفع الحجز`: تسجيل الدخول + حالة الحساب «نشط»
  - `فتح نزاع`: مرتبط بحجز + حالة الحساب «نشط»

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
