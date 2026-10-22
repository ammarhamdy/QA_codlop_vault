---
tc_id: TC-RENT-019
title: Verify Bulk Editing Multiple Selected Days Updates Status and Price Uniformly
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
| Selected Date Range | `2026-11-25` to `2026-11-28` (4 consecutive days) |
| Updated Status | `Available` (`متاح`) |
| Custom Price | `2,500 SAR` |

# Preconditions
1. Dates `2026-11-25` through `2026-11-28` have no active app bookings.
2. Lessor is on the chalet calendar screen.

# Steps
1. Drag the selection cursor across dates `2026-11-25`, `2026-11-26`, `2026-11-27`, and `2026-11-28`.
2. Verify all 4 dates are highlighted in the selection container.
3. Tap **"Edit Selected"** (`تعديل المحدد`).
4. Set status = **Available** and enter custom price = `2500` SAR.
5. Tap **Save**.
6. Check the calendar cells across the 4 dates.

# Expected Result
1. The bulk edit modal applies the new status (`Available`) and custom price (`2,500 SAR`) uniformly across all 4 selected days.
2. The calendar refreshes immediately to display the updated pricing and availability across the entire selected range.

# Notes
- Requirement: UF-67 Main Flow Step 1 ("Touches a day, or drags across several days -> Highlights the selection").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
