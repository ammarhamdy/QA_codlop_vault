---
tc_id: TC-PKG-029
title: Verify Boundary Validations on Admin Package Creation and Updates
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Allowed Boundary | Valid Test Values | Invalid Test Values |
| ----- | ---------------- | ----------------- | ------------------- |
| Duration | 1 to 730 days | 1 day, 30 days, 730 days | 0 days, -5 days, 731 days |
| Ads Count | $\ge 1$ | 1 ad, 10 ads, 100 ads | 0 ads, -1 ads |
| Featured Ads | 0 up to Ads Count | 0 featured, equal to Ads Count | -1 featured, greater than Ads Count |
| Priority | 1 to 100 | 1, 50, 100 | 0, -1, 101 |

# Preconditions
1. Admin user is authenticated with package management permissions.
2. Admin opens Admin Panel -> Packages & Payment Settings -> "Create Package".

# Steps
1. Attempt to create a package with Duration = 0 days or 731 days.
2. Attempt to create a package with Ads Count = 0.
3. Attempt to create a package with Ads Count = 5, but Featured Ads = 6.
4. Attempt to create a package with Priority = 0 or 101.
5. Create a package with valid boundary parameters: Duration = 365, Ads = 10, Featured = 5, Priority = 50.
6. Tap **Save**.

# Expected Result
1. Any input violating the specified boundary constraints (Duration 1-730, Ads $\ge$ 1, Featured 0 to Ads, Priority 1-100) is rejected with a descriptive validation error (Error Flow E3).
2. The package with valid boundary values passes validation and is saved successfully.

# Notes
- Requirement: UF-48 Main Flow Step 1, Error Flow E3, and Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
