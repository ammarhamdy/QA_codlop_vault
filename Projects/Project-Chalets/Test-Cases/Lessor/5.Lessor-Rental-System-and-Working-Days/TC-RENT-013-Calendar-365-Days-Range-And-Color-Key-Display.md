---
tc_id: TC-RENT-013
title: Verify Calendar 365-Day Range and Four Standard Color-Coded Statuses
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Status | Arabic Label | Color Key Representation |
| ------ | ------------ | ------------------------ |
| Available | متاح | Green / Neutral Open State |
| Booked | محجوز | Red / Booked Indicator |
| Temporary Booked | حجز مؤقت | Orange / Yellow Holding State |
| Closed | مغلق | Grey / Dark Hatched State |

# Preconditions
1. Lessor is logged in and opens the "Calendar" (`التقويم`) screen for an existing chalet.
2. Chalet has days configured across various statuses.

# Steps
1. Open the Calendar view for the chalet.
2. Scroll through months from today up to 365 days into the future.
3. Observe the color key and legend displayed on the screen.
4. Verify the display of daily prices and status badges.
5. Attempt to navigate beyond 365 days ahead.

# Expected Result
1. The calendar permits scrolling up to exactly 365 days ahead from the current date.
2. The UI renders strictly the four approved status categories:
   - **Available** (`متاح`)
   - **Booked** (`محجوز`)
   - **Temporary Booked** (`حجز مؤقت`)
   - **Closed** (`مغلق`)
3. Navigation beyond the 365-day range is bounded and restricted.

# Notes
- Requirement: UF-66 Main Flow Steps 1 to 2 & Notes (Closed question: "We will ONLY work on those 4 statuses: Available, Booked, Temporary Booked, Closed").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
