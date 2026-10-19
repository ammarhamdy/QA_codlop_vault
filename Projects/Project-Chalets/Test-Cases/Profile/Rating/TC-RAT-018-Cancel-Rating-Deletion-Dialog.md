---
tc_id: TC-RAT-018
title: Verify Cancelling Rating Deletion Leaves Review Unchanged and Visible
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review ID | `REV-9902` |
| Chalet Name | `شاليه الياسمين` |
| Rating Status | `Visible` |

# Preconditions
1. Customer has an existing visible rating `REV-9902`.
2. Customer is on the "My Ratings" (`تقييماتي`) screen.

# Steps
1. Tap the **"Delete"** (`حذف`) button on review `REV-9902`.
2. When the confirmation modal prompts "Are you sure you want to delete this rating?", tap **"Cancel"** (`إلغاء`).
3. Check the review status in "My Ratings".
4. Open the public chalet page for `شاليه الياسمين`.

# Expected Result
1. The deletion confirmation dialog dismisses immediately.
2. The rating remains in status `Visible`.
3. The review continues to be listed on "My Ratings" and on the public chalet page.
4. No change is made to the property's average score.

# Notes
- Requirement: UF-18 Alternative Flow A1 ("Customer cancels the confirmation -> Nothing changes").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
