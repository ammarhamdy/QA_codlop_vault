---
tc_id: TC-RENT-021
title: Verify Lessor Can Change a Non-Working Day to Available
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected Date | Wednesday `2026-11-18` |
| Initial State | `Closed (Non-working day)` (`مغلق - يوم غير عامل`) |
| Target State | `Available` (`متاح`) |
| Custom Price | `1,400 SAR` |

# Preconditions
1. Wednesday is configured as a non-working day in general chalet settings.
2. Lessor wishes to open Wednesday `2026-11-18` as a special exception for booking.

# Steps
1. Tap date `2026-11-18` on the calendar.
2. Tap **"Edit Selected"** (`تعديل المحدد`).
3. Switch status from Closed to **Available** (`متاح`).
4. Enter custom price `1400` SAR.
5. Tap **Save**.
6. Check the customer calendar for `2026-11-18`.

# Expected Result
1. The system permits overriding an individual non-working day to **Available**.
2. The calendar cell updates to Available and displays price `1,400 SAR`.
3. In the client booking interface, `2026-11-18` becomes bookable for customers.

# Notes
- Requirement: UF-67 Notes (Closed question: "Can the lessor change a non-working day to available? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
