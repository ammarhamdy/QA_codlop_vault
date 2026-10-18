---
tc_id: TC-SRCH-013
title: Verify Place Type Filter Hides When Single Type Active and Shows When Multiple Types Active
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
| System Configuration A | Exactly 1 place type active: `شاليه` (Chalet) |
| System Configuration B | Multiple place types active: `شاليه` (Chalet), `مزرعة` (Farm) |

# Preconditions
1. Platform administrative configuration can switch active place types.

# Steps
1. Set platform configuration to State A (only `شاليه` is active).
2. Open the mobile app and navigate to the Search Filters drawer.
3. Observe whether any "Place Type" (نوع المكان) filter exists.
4. Set platform configuration to State B (activate `مزرعة` as an additional active place type).
5. Reload/reopen the Search Filters drawer in the mobile app.
6. Observe the presence and options of the "Place Type" filter.

# Expected Result
1. In State A (single active place type), the Place Type filter is completely hidden from the filter drawer (`فلتر النوع لا يظهر ما دام نوع واحد مفعّلًا`).
2. In State B (multiple active place types), the Place Type filter becomes visible and allows the user to filter listings by chalet, farm, or all.

# Notes
- Requirement: `الفلاتر: فلتر النوع لا يظهر ما دام نوع واحد مفعّلًا.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
