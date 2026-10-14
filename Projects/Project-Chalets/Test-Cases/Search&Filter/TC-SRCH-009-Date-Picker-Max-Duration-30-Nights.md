---
tc_id: TC-SRCH-009
title: Verify Enforcement of Maximum Search Duration Limit of Thirty Nights
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Check-in Date | `2026-11-01` |
| Valid Maximum Boundary (30 Nights) | Check-out: `2026-12-01` (Exactly 30 nights) |
| Invalid Boundary (31 Nights) | Check-out: `2026-12-02` (31 nights) |

# Preconditions
1. User opens the Gregorian date picker and selects Check-in date `2026-11-01`.

# Steps
1. In the date picker, attempt to select `2026-12-02` as Check-out date (31 nights).
2. Observe system validation or whether calendar dates beyond 30 nights from check-in are disabled.
3. Select `2026-12-01` as Check-out date (exactly 30 nights).
4. Tap "تأكيد" / "بحث".

# Expected Result
1. Any duration exceeding 30 nights is strictly prohibited: dates beyond 30 nights from check-in cannot be chosen as check-out, or an explicit validation message informs the user that the maximum search duration is 30 nights.
2. Selecting a duration of exactly 30 nights is accepted as the maximum valid boundary.

# Notes
- Requirement: `أقصى مدة للبحث 30 ليلة`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
