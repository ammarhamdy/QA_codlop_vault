---
tc_id: TC-FAV-008
title: Verify Network Interruption Reverts Heart State with Arabic Connection Error
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet Name | `شاليه البستان` |
| Network State | Offline / Airplane Mode or Dropped Connection |
| Expected Error Message | `تعذر الحفظ، تحقق من الاتصال` |

# Preconditions
1. Customer is logged in to the mobile application.
2. Device network simulation tool / Airplane mode is ready to simulate offline state.
3. Customer is viewing `شاليه البستان` on place details screen.

# Steps
1. Disconnect device from Internet (enable Airplane mode or simulate network drop).
2. Tap the empty heart icon on `شاليه البستان` to favorite it.
3. Observe UI response, icon animation, and network fallback behavior.
4. Re-enable network connectivity and navigate to the Favorites screen.

# Expected Result
1. Upon failed synchronization due to lack of network connectivity, the optimistic UI state changes revert immediately.
2. The heart icon flips back to its original state (unfilled/empty).
3. The system displays the exact Arabic error message: `«تعذر الحفظ، تحقق من الاتصال»`.
4. The item is not persisted to the customer's favorites list.

# Notes
- Requirement: UF-20 Error Flow E1 ("No connection: The heart state reverts and shows «تعذر الحفظ، تحقق من الاتصال»").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
