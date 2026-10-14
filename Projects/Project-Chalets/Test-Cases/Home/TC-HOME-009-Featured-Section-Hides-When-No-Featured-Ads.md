---
tc_id: TC-HOME-009
title: Verify Featured Section Completely Disappears When No Featured Listings Exist
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Featured Listings in System | `0` (Regular chalets exist, but none have "مميز" status) |

# Preconditions
1. Active chalets exist and are published in the platform, but none of them are designated as "مميز" (Featured).
2. User opens the application on the Home screen.

# Steps
1. Navigate to the Home screen.
2. Scroll through the Home screen content.
3. Check for the header, container, or layout space for the "المميزة" section.

# Expected Result
1. The "المميزة" (Featured) section is completely hidden from the Home screen.
2. The section title, empty placeholders, and the "عرض الكل" button do not render.
3. The layout seamlessly joins surrounding sections without blank vertical gaps.

# Notes
- Requirement: `لا بنرات أو لا مميزة: يختفي القسم كاملًا`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
