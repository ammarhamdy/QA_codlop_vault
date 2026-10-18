---
tc_id: TC-BKG-005
title: Verify Booking Rejection When Requested Slot Overlaps Existing Booking
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet / Place | `شاليه الأندلس` |
| Target Date | `2026-11-12` |
| Existing Booking Type | Time Period (`فترة مسائية`: `16:00 - 23:00`) |
| Existing Booking Status | Temporary / Pending Confirmation / Confirmed |
| Conflicting Attempt Type | Full Day (`يوم كامل`) for `2026-11-12` |

# Preconditions
1. Customer is logged in and eligible to book (limit not exceeded, not banned).
2. `شاليه الأندلس` already has an existing active booking on `2026-11-12` for the evening period (`16:00 - 23:00`) under any status (temporary, pending confirmation, or confirmed).

# Steps
1. Navigate to `شاليه الأندلس` place details screen.
2. Tap **"Book"** (`حجز`).
3. Select `2026-11-12` and attempt to choose **Full Day** (`يوم كامل`).
4. If selectable in UI, tap **"Book Temporarily"** and confirm.
5. Repeat check when conflicting booking is in status:
   - Case A: `Temporary` (محجوز مؤقتًا)
   - Case B: `Awaiting Confirmation` (بانتظار تأكيد المؤجّر)
   - Case C: `Confirmed` (مؤكد)

# Expected Result
1. The slot on `2026-11-12` is marked/shown as unavailable for a full-day booking due to time overlap with the existing time period.
2. If submitted, the backend rejects the booking request.
3. No duplicate or overlapping booking is created.
4. Overlap rejection applies across all statuses: temporary, awaiting confirmation, and confirmed.

# Notes
- Requirement: UF-01 Error Flow E2.
- Full day and time period cannot overlap under any booking status.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
