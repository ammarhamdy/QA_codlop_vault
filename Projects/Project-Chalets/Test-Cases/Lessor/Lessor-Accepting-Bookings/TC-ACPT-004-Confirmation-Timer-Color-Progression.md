---
tc_id: TC-ACPT-004
title: Confirmation Countdown Counter Color Progression (Normal to Orange to Red)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Configured Window | Elapsed Time | Remaining Time | Expected Visual State |
| ----------------- | ------------ | -------------- | --------------------- |
| 24 hours (Default)| 4 hours (< 50%) | 20 hours remaining | Normal / Standard color |
| 24 hours | 13 hours (> 50%) | 11 hours remaining | **Orange** (`برتقالي`) |
| 24 hours | 25 hours (> 100%) | 0 hours (Window ended) | **Red** (`أحمر`) |

# Preconditions
1. Admin confirmation window is set to 24 hours.
2. Three bookings exist under the lessor with receipt upload times corresponding to the test data scenarios.

# Steps
1. Navigate to "My Places' Bookings" -> "Awaiting Your Confirmation".
2. Inspect the confirmation countdown counter on Booking #1 (elapsed 4 hours).
3. Inspect the confirmation countdown counter on Booking #2 (elapsed 13 hours).
4. Inspect the confirmation countdown counter on Booking #3 (elapsed 25 hours).
5. Open each booking details view and verify counter appearance in the details screen as well.

# Expected Result
1. In both list item and booking details:
   - For Booking #1 (< 50% elapsed): The counter renders in default neutral/standard style.
   - For Booking #2 (> half window elapsed): The counter renders in **Orange** (`برتقالي`) to warn the lessor.
   - For Booking #3 (window expired): The counter turns and remains **Red** (`أحمر`).

# Notes
- Requirement: UF-80 (Main Flow Step 4, Alternative Flow A2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
