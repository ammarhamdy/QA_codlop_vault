---
tc_id: TC-HOME-011
title: Verify Place Types Section Appears When Multiple Place Types Are Active
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Configured Place Types | Multiple active types: `شاليه`, `مزرعة`, `استراحة` |

# Preconditions
1. In the platform configuration, multiple place types (more than one) are enabled and active (e.g., `شاليه`, `مزرعة`, `استراحة`).
2. Published listings exist across these place types.
3. User is on the Home screen.

# Steps
1. Navigate to the Home screen.
2. Scroll to the location where categories/place types are positioned.
3. Observe the "أنواع الأماكن" (Place Types) section.
4. Verify each active place type is rendered as an interactive item/chip.

# Expected Result
1. The "أنواع الأماكن" (Place Types) section is rendered on the Home screen.
2. All active place types (e.g., `شاليه`, `مزرعة`, `استراحة`) are displayed with appropriate icons/labels.
3. Tapping a place type filters or navigates to listings of that specific place type.

# Notes
- Requirement: `قسم أنواع الأماكن اذا وجد انواع للاماكن` (appears only when multiple types exist; hidden when only single type "شاليه" is active).

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
