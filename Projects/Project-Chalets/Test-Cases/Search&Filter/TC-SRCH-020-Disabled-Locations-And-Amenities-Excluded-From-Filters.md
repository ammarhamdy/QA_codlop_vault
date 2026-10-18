---
tc_id: TC-SRCH-020
title: Verify Disabled Cities Districts and Amenities Are Excluded From Filter Options
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Entity | Active Item | Disabled Item |
| ------ | ----------- | ------------- |
| City (`المدينة`) | `الرياض` | `سكاكا` (Marked inactive/disabled by Admin) |
| District (`الحي`) | `النرجس` | `حي معطل اختباري` (Disabled in Riyadh) |
| Amenity (`المرافق`) | `مسبح` | `مرفق قديم معطل` (Disabled globally) |

# Preconditions
1. Admin panel has disabled the specified city (`سكاكا`), district (`حي معطل اختباري`), and amenity (`مرفق قديم معطل`) in reference data.
2. User opens the application and navigates to the Search & Filters screen.

# Steps
1. Tap on the Filters button to open the filter drawer.
2. Open the City dropdown / selection modal.
3. Search or inspect the list for `الرياض` and `سكاكا`.
4. Select active city `الرياض` and open District selection modal.
5. Inspect the district list for `النرجس` and `حي معطل اختباري`.
6. Inspect the Amenities checklist for `مسبح` and `مرفق قديم معطل`.

# Expected Result
1. Active city `الرياض` is present; disabled city `سكاكا` is completely absent from the filter list.
2. Active district `النرجس` is present; disabled district is completely absent from the filter list.
3. Active amenity `مسبح` is present; disabled amenity is completely absent from the filter options.
4. Disabled geographical entities and amenities never appear in filters (`المدن والأحياء والمرافق المعطّلة لا تظهر في الفلاتر`).

# Notes
- Requirement: `قواعد البحث و الفلاتر: المدن والأحياء والمرافق المعطّلة لا تظهر في الفلاتر.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
