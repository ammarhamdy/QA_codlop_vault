---
tc_id: TC-HOME-010
title: Verify Place Types Section Is Hidden When Only Single Place Type Is Active
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Configured Place Types in System | Single active type: `شاليه` (Chalet) |

# Preconditions
1. In the platform configuration, only one place type (`شاليه`) is enabled.
2. User is on the Home screen.

# Steps
1. Navigate to the Home screen.
2. Scroll through the Home screen layout.
3. Check for the presence of a "أنواع الأماكن" (Place Types / Categories) section or filter chips.

# Expected Result
1. The "أنواع الأماكن" section does not appear on the Home screen.
2. The UI does not show categories or type filters since only one type («شاليه») is active.
3. Screen space is preserved without rendering unnecessary category controls.

# Notes
- Requirement: `قسم أنواع الأماكن لا يظهر ما دام نوع واحد «شاليه» مفعّلًا` and `قسم أنواع الأماكن اذا وجد انواع للاماكن`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
