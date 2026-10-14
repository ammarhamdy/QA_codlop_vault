---
tc_id: TC-SRCH-016
title: Verify Place Type Filter Is Hidden While Only Single Type Is Active
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
| Active Place Types in System | Single type: `شاليه` (Chalet) |
| Target Filter Element | `فلتر النوع` (Place Type / Property Type Filter) |

# Preconditions
1. In the platform configuration, only one place type (`شاليه`) is active.
2. User is viewing search results and opens the Filters modal.

# Steps
1. Navigate to search results.
2. Tap the "فلاتر" (Filters) button to open the filter options sheet.
3. Review all available filter categories (City, District, Dates, Guests, Price, Rooms, Amenities, Rating).
4. Verify whether a "نوع العقار / نوع المكان" (Place Type) filter is present.

# Expected Result
1. The Place Type filter option does not appear anywhere within the Filters view.
2. The UI is simplified to exclude type filtering as long as only "شاليه" is active in the platform.

# Notes
- Requirement: `فلتر النوع لا يظهر ما دام نوع واحد مفعّلًا`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
