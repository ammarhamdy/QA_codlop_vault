---
tc_id: TC-PKG-002
title: Verify Hidden or Archived Packages Are Excluded from Packages Screen
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Package Name | Status in Admin Panel | Expected Visibility to Lessor |
| ------------ | --------------------- | ------------------------------ |
| `باقة تجريبية مخفية` | Hidden (`مخفية`) | Excluded (Not visible) |
| `باقة الموسم الماضي` | Archived (`مؤرشفة`) | Excluded (Not visible) |
| `باقة الأعمال النشطة` | Active (`نشطة`) | Visible |

# Preconditions
1. User is an accepted lessor.
2. Admin has configured one active package, one hidden package, and one archived package.

# Steps
1. Log in as lessor and open the "Packages" (`الباقات`) screen.
2. Inspect all displayed package options.

# Expected Result
1. Only `باقة الأعمال النشطة` is rendered on the screen.
2. Neither the hidden package (`باقة تجريبية مخفية`) nor the archived package (`باقة الموسم الماضي`) appears in the active packages list.

# Notes
- Requirement: UF-42 Alternative Flow A2 ("A package is hidden or archived -> It is not shown as an active package").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
