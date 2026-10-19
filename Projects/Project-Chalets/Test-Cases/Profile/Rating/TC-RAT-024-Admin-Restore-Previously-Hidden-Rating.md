---
tc_id: TC-RAT-024
title: Verify Admin Can Restore a Previously Hidden Rating to Visible Status
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review ID | `REV-9940` |
| Chalet ID | `CH-707` (`شاليه الريف`) |
| Initial Status | `Hidden by Admin` |
| Restored Status | `Visible` |

# Preconditions
1. Review `REV-9940` on `CH-707` was previously set to `Hidden by Admin`.
2. Admin determines upon grievance review or reconsideration that the review does not violate policy.

# Steps
1. Navigate to Admin Dashboard -> Rating Management -> Hidden Ratings.
2. Locate and open review record `REV-9940`.
3. Select the **"Restore"** (`استعادة التقييم`) action.
4. Confirm the restoration prompt.
5. Open the public chalet page for `CH-707` as a public visitor.
6. Verify if the review and any attached lessor reply are visible.
7. Observe the recalculated chalet average rating.
8. Check author's view under "My Ratings".

# Expected Result
1. The rating status transitions from `Hidden by Admin` back to `Visible`.
2. The review and the lessor's reply reappear on the public chalet page for `CH-707`.
3. The chalet's average rating is automatically recalculated including this restored rating.
4. In the author's "My Ratings" screen, the `«مخفي من الإدارة»` badge is removed.

# Notes
- Requirement: UF-19 Alternative Flow A2 ("Admin decides to restore it -> Status returns to Visible, the average is recalculated again").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
