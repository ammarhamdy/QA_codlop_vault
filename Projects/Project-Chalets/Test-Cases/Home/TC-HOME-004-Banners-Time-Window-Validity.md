---
tc_id: TC-HOME-004
title: Verify Banners Display Strictly Within Their Configured Active Time Window
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
| Current System Time | `T0` (e.g., 2026-10-14 12:00) |
| Banner 1 (Future Window) | Start: `T0 + 2 hours`, End: `T0 + 24 hours` |
| Banner 2 (Active Window) | Start: `T0 - 2 hours`, End: `T0 + 4 hours` |
| Banner 3 (Expired Window) | Start: `T0 - 24 hours`, End: `T0 - 1 hour` |

# Preconditions
1. Banners 1, 2, and 3 are created and published with target audience set to `الكل`.
2. Mobile application is opened on the test device.

# Steps
1. Navigate to the Home screen at current time `T0`.
2. Inspect the banners carousel/section on the Home screen.
3. Check for the presence of Banner 1 (Future).
4. Check for the presence of Banner 2 (Active).
5. Check for the presence of Banner 3 (Expired).
6. Fast-forward test clock to `T0 + 5 hours` (or simulate time change after Banner 2 expiration) and perform pull-to-refresh on Home screen.

# Expected Result
1. At time `T0`:
   - Banner 2 (Active Window) is visible and accessible.
   - Banner 1 (Future Window) is not rendered.
   - Banner 3 (Expired Window) is not rendered.
2. At time `T0 + 5 hours`:
   - Banner 2 has expired and automatically disappears from the Home screen.

# Notes
- Requirement: `البنرات الموجهة لجمهوره داخل نافذتها الزمنية` and `البنر يظهر فقط داخل نافذته ولجمهوره`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
