---
tc_id: TC-SRCH-008
title: Verify Filter Sheet Displays All Documented Filter Options and Controls
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
| Required Filter Criteria | `المدينة` (City), `الحي` (District), `الضيوف` (Guests), `السعر من/إلى` (Price Range), `عدد الغرف` (Room Count), `المرافق` (Amenities), `التقييم من/إلى` (Rating Range) |
| Controls | Active Filters Counter, `مسح الكل` (Clear All) |

# Preconditions
1. User is on the Search screen with the filter action button visible.

# Steps
1. Tap the Filters icon/button.
2. Inspect the filter drawer / sheet interface.
3. Verify presence of the following filter options:
   - City (`المدينة`)
   - District (`الحي`)
   - Guests count (`الضيوف`)
   - Price range From / To (`السعر من/إلى`)
   - Number of rooms (`عدد الغرف`)
   - Amenities selection list (`المرافق`)
   - Rating range From / To (`التقييم من/إلى`)
4. Verify the active filters counter element is present.
5. Verify the `مسح الكل` (Clear All) action button is present.

# Expected Result
1. The filter drawer opens and contains all required filter criteria clearly organized.
2. Input controls for Price and Rating support both lower and upper bounds (من/إلى).
3. The active filter count indicator and "مسح الكل" button are rendered and accessible.

# Notes
- Requirement: `الفلاتر: المدينة، الحي، الضيوف، السعر من/إلى، عدد الغرف، المرافق (كل المختارة)، التقييم من/إلى، مع عداد للفلاتر المفعّلة و «مسح الكل».`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
