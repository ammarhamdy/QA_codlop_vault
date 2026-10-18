---
tc_id: TC-BKG-075
title: Verify Step 2 Ad Suspension Hides Listing and Stops New Bookings While Preserving Existing Bookings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor ID | `LESSOR-3014` |
| Affected Ad / Chalet | `شاليه الأندلسية` |
| Applied Penalty Step | `Step 2: Ad Suspension` (`إيقاف الإعلان`) |
| Penalty Reason | `تكرار عدم رد المبالغ للعملاء بعد إلغاء الحجز` |
| Expected Notice on Ad | `الإعلان موقوف من الإدارة: تكرار عدم رد المبالغ للعملاء بعد إلغاء الحجز` |

# Preconditions
1. Lessor `LESSOR-3014` has an active listing (`شاليه الأندلسية`) and an existing confirmed booking scheduled for next week.
2. Support imposes Step 2 (Ad Suspension) on `شاليه الأندلسية` with reason.

# Steps
1. In customer app, search for `شاليه الأندلسية` or open via direct share link.
2. Verify listing visibility in search results and home screen.
3. Attempt to book a new slot on `شاليه الأندلسية`.
4. As Lessor, navigate to property management and attempt to publish / unhide the ad.
5. Check the status of the pre-existing confirmed booking scheduled for next week.

# Expected Result
1. The listing is completely hidden from search results and chalet catalogs.
2. Opening via direct link displays the administrative suspension banner: `«الإعلان موقوف من الإدارة: {السبب}»`.
3. Customer contact buttons and new booking buttons are disabled.
4. The lessor cannot republish or re-show the ad while under suspension.
5. Pre-existing confirmed bookings remain intact, active, and accessible to their respective customers.

# Notes
- Requirement: UF-11 Alternative Flow A2 ("Step 2: Ad Suspension: Ad is hidden, contact and new bookings stop. Shows «الإعلان موقوف من الإدارة: {السبب}». Lessor cannot re-show it. Existing bookings remain").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
