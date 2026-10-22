---
tc_id: TC-JOIN-034
title: Verify System Prevents Deleting an Application Field That Is Already in Use
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field Name | Usage Status | Attempted Admin Action | Expected System Result |
| ---------- | ------------ | ---------------------- | ---------------------- |
| `Activity Name` (`اسم النشاط`) | Used in 15 submitted applications | Hard Delete (`حذف`) | **Blocked** (Error Flow E1) |
| `Temporary Test Note` | 0 applications (Unused) | Hard Delete (`حذف`) | **Allowed** |

# Preconditions
1. Admin user is in Admin Panel -> Join Application Settings.
2. Field `Activity Name` has data recorded in submitted lessor applications.
3. Field `Temporary Test Note` was created as a test and has zero associated applicant submissions.

# Steps
1. Locate field `Activity Name` and attempt to click the **Delete** button.
2. Observe system validation.
3. Locate unused field `Temporary Test Note` and click **Delete**.
4. Confirm deletion.

# Expected Result
1. The system blocks deleting `Activity Name` because it is already referenced by existing applications (Error Flow E1: "Field is already used -> Deletion is not allowed").
2. The admin can disable the field instead of deleting it.
3. The unused field `Temporary Test Note` is deleted cleanly without integrity conflicts.

# Notes
- Requirement: UF-34 Main Flow Step 3 & Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
