---
tc_id: TC-JOIN-022
title: Verify Adding Multiple Distinct Places to Single Join Application
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Place Entry | Place Name | City / District | Photos Count | Management Proof Attached |
| ----------- | ---------- | --------------- | ------------ | ------------------------- |
| Place 1 | `منتجع النخيل 1` | الرياض / الرمال | 4 photos | `deed_1.pdf` |
| Place 2 | `منتجع النخيل 2` | بريدة / الريان | 3 photos | `deed_2.pdf` |

# Preconditions
1. User has completed Place 1 and saved it in the application draft.
2. User is on the "Places for Inspection" overview step.

# Steps
1. Tap **"Add Another Place"** (`إضافة مكان آخر`).
2. Fill all required fields for Place 2 (`منتجع النخيل 2`).
3. Set map pin, upload 3 photos, and attach `deed_2.pdf`.
4. Tap **Save Place**.
5. Inspect the places list on the join application review screen.

# Expected Result
1. Both Place 1 and Place 2 are saved under the same join application draft.
2. The user can view, edit, or remove individual places from the list prior to submission.
3. Both properties will be queued for subsequent inspection upon final application submission.

# Notes
- Requirement: UF-29 Alternative Flow A2 ("User adds another place -> Repeats from step 1").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
