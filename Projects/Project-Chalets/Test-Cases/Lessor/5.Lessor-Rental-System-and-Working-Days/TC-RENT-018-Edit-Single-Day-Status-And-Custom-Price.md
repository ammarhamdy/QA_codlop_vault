---
tc_id: TC-RENT-018
title: Verify Editing Single Day Status and Custom Price Updates Calendar Instantly
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected Date | `2026-11-15` (Future available date) |
| Updated Status | `Manually Booked` (`محجوز يدويًا`) |
| Custom Price | `1,800 SAR` |

# Preconditions
1. Date `2026-11-15` is not linked to any active app booking.
2. Lessor is viewing the chalet calendar.

# Steps
1. Tap date `2026-11-15` on the calendar.
2. Tap **"Edit Selected"** (`تعديل المحدد`).
3. Select status **"Manually Booked"** (`محجوز يدويًا`).
4. Enter custom price `1800` SAR.
5. Tap **Save** (`حفظ`).
6. Observe calendar cell styling and last update timestamp.

# Expected Result
1. The calendar cell for `2026-11-15` immediately updates to reflect status `Manually Booked` with price `1,800 SAR`.
2. The change applies instantly without requiring review.
3. The calendar's "Last updated" indicator refreshes with the current timestamp.

# Notes
- Requirement: UF-67 Main Flow Steps 1 to 4.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
