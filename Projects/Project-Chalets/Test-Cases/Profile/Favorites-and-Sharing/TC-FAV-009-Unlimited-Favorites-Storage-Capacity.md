---
tc_id: TC-FAV-009
title: Verify System Allows Unlimited Favorites Without Capacity Caps
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Benchmark Test Volume | `100+ Favorites` |
| New Addition | `شاليه رقم 101` |

# Preconditions
1. Customer has an account with a large number of saved favorites (e.g. 100 or more items populated via script/test data).
2. Customer is authenticated and searching chalets.

# Steps
1. Navigate to a newly discovered chalet (`شاليه رقم 101`).
2. Tap the heart icon to add it as the 101st favorite.
3. Observe system response and confirmation message.
4. Navigate to the Favorites screen and scroll through the list.

# Expected Result
1. The 101st item is saved without any capacity errors, restriction dialogs, or warnings.
2. The platform enforces NO cap/limit on the total number of places a customer can save in their favorites list.
3. All previously saved favorites remain accessible and correctly paginated/rendered on the Favorites screen.

# Notes
- Requirement: UF-20 Notes ("Is there a limit on the number of favorites? NO").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
