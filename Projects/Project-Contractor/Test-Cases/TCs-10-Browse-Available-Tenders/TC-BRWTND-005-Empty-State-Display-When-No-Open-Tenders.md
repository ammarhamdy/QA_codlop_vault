---
tc_id: TC-BRWTND-005
title: Verify Empty State Display When No Active Open Tenders Exist
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Database State | Zero tenders with `status = 'Open'` and `end_date > CURRENT_TIMESTAMP` |
| Expected Message | `"No available tenders at the moment. Please check back later."` |

# Preconditions
1. All tenders in the database are either `Closed`, `Expired`, `Awarded`, or no tenders exist.
2. The user is an unauthenticated Professional.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Await catalog loading.
3. Inspect the loaded screen container.
4. Verify the message presented in the empty state view.

# Expected Result
1. The catalog confirms that zero active tenders match the criteria.
2. The empty state view is displayed with the explicit message: `"No available tenders at the moment. Please check back later."`.
3. No broken cards, endless loading spinners, or error banners are shown.

# Notes
- Directly validates alternative flow A1 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
