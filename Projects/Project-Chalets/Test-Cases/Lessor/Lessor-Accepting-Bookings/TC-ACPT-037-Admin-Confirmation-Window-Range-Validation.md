---
tc_id: TC-ACPT-037
title: Admin Booking Reception Settings - Confirmation Window Range Validation (1 to 72 Hours)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Test Variant | Input Value (Hours) | Expected Status |
| ------------ | ------------------- | --------------- |
| Below Minimum (0 hrs) | `0` | Rejected |
| Negative Value | `-5` | Rejected |
| Minimum Boundary | `1` | Accepted |
| Default Value | `24` | Accepted |
| Maximum Boundary | `72` | Accepted |
| Above Maximum (73 hrs) | `73` | Rejected |

# Preconditions
1. Admin user is authenticated with permission to manage platform settings.
2. Admin opens Booking Reception Settings in the Admin Control Panel.

# Steps
1. Navigate to the **Confirmation Window** setting field.
2. Enter `0` and attempt to save. Verify validation error.
3. Enter `73` and attempt to save. Verify validation error.
4. Enter `1` (min valid boundary) and save. Verify success.
5. Enter `72` (max valid boundary) and save. Verify success.
6. Reset to default `24` hours and save.

# Expected Result
1. Any value strictly less than 1 hour or greater than 72 hours is rejected (Error E1).
2. The boundaries 1 hour and 72 hours are accepted and persisted successfully.

# Notes
- Requirement: UF-85 (Main Flow Step 2, Error Flow E1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
