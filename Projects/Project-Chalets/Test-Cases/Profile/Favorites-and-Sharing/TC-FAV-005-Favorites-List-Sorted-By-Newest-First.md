---
tc_id: TC-FAV-005
title: Verify Favorites Screen Displays Saved Places Sorted by Newest Added First
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| First Added Place | `شاليه 1` (Added at `10:00:00`) |
| Second Added Place | `شاليه 2` (Added at `10:05:00`) |
| Third Added Place | `شاليه 3` (Added at `10:10:00`) |

# Preconditions
1. Customer has an empty favorites list initially.
2. Customer is authenticated in the mobile app.

# Steps
1. Navigate to `شاليه 1` and tap heart icon at `10:00:00`.
2. Navigate to `شاليه 2` and tap heart icon at `10:05:00`.
3. Navigate to `شاليه 3` and tap heart icon at `10:10:00`.
4. Tap the **Favorites** (`المفضلة`) tab on the bottom navigation bar.
5. Inspect the vertical ordering of the places displayed on the Favorites screen.

# Expected Result
1. The Favorites screen lists all 3 saved places.
2. The places are strictly sorted chronologically by addition time, **newest first**:
   - 1st position (top): `شاليه 3` (added at 10:10)
   - 2nd position: `شاليه 2` (added at 10:05)
   - 3rd position (bottom): `شاليه 1` (added at 10:00)
3. Newest additions always appear at the top of the list without manual sorting.

# Notes
- Requirement: UF-20 Step 3 and Notes ("Favorites are sorted by the time they were added (newest first)").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
