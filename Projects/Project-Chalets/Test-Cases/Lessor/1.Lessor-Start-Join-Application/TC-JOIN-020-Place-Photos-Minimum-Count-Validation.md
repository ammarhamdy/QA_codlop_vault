---
tc_id: TC-JOIN-020
title: Verify System Enforces Minimum Three Photos Requirement for Each Place
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Uploaded Photos Count | Test Action | Expected Result |
| --------------------- | ----------- | --------------- |
| 0 photos | Tap Save Place | Blocked: `«أضف 3 صور على الأقل للمكان»` |
| 2 photos | Tap Save Place | Blocked: `«أضف 3 صور على الأقل للمكان»` |
| 3 photos | Tap Save Place | Accepted |
| 5 photos | Tap Save Place | Accepted |

# Preconditions
1. User is on the "Add Place" form with valid textual details and location pin.

# Steps
1. Upload only 2 photos for the chalet.
2. Tap **Save Place** (`حفظ المكان`).
3. Observe system validation message.
4. Upload a 3rd photo.
5. Tap **Save Place**.

# Expected Result
1. Attempting to save a place with fewer than 3 photos is blocked immediately.
2. The exact Arabic error message is displayed: `«أضف 3 صور على الأقل للمكان»`.
3. When 3 or more photos are uploaded, photo count validation passes successfully.

# Notes
- Requirement: UF-29 Main Flow Step 6 & Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
