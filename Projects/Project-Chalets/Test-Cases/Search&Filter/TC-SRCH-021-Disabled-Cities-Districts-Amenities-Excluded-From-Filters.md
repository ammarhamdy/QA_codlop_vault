---
tc_id: TC-SRCH-021
title: Verify Disabled Cities Districts and Amenities Are Excluded From Filter Options
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
| Active Entities | City: `بريدة`, District: `حي الصفراء`, Amenity: `مسبح` |
| Disabled Entities | City: `محافظة معطلة`, District: `حي معطل`, Amenity: `مرفق معطل` |

# Preconditions
1. In the admin control panel, specific cities, districts, and amenities are set to disabled/inactive status.
2. User opens the search bar or filters modal in the mobile app.

# Steps
1. Open the City and District selector in the search header or filters modal.
2. Search or browse for the disabled city and disabled district.
3. Open the Amenities filter checklist.
4. Search or browse for the disabled amenity.

# Expected Result
1. Disabled cities and districts do not appear in the dropdowns, lists, or suggestions.
2. Disabled amenities do not appear as filter options or checkboxes.
3. Only active and approved administrative regions and amenities are presented to the user.

# Notes
- Requirement: `المدن والأحياء والمرافق المعطّلة لا تظهر في الفلاتر`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
