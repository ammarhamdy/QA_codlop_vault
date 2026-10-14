---
tc_id: TC-SRCH-008
title: Verify Date Picker Prevents Check-out Date Prior to or Equal to Check-in Date
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Check-in Date | `2026-11-10` |
| Invalid Check-out Date 1 | `2026-11-09` (Before Check-in) |
| Invalid Check-out Date 2 | `2026-11-10` (Same day / 0 nights) |
| Valid Check-out Date | `2026-11-11` (1 night) |

# Preconditions
1. User has opened the Gregorian date picker and selected `2026-11-10` as Check-in date.

# Steps
1. With Check-in set to `2026-11-10`, attempt to select `2026-11-09` as Check-out date.
2. Observe system behavior.
3. Attempt to select `2026-11-10` as Check-out date (same-day check-out).
4. Observe system behavior.
5. Select `2026-11-11` as Check-out date.

# Expected Result
1. Dates prior to the selected check-in date (`2026-11-09` and earlier) are automatically disabled and unselectable for check-out.
2. If tapped, the system prohibits setting a check-out date earlier than or equal to check-in (or treats tapping an earlier date as resetting the check-in selection).
3. Selecting a valid future date (`2026-11-11`) is accepted and highlights the date range properly.

# Notes
- Requirement: `المنتقي يمنع: تاريخ الخروج قبل تاريخ الدخول`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
