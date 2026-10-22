---
tc_id: TC-RENT-022
title: Verify System Enforces Mandatory Status and Custom Price on Day Edit
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Incomplete Scenario | Status Selection | Custom Price Input | Expected Result |
| ------------------- | ---------------- | ------------------ | --------------- |
| Scenario A | `Available` | `""` (Empty string) | Blocked (Price required) |
| Scenario B | `None` (Unselected) | `1,500 SAR` | Blocked (Status required) |

# Preconditions
1. Lessor has selected a valid future date and opened the "Edit Selected" modal.

# Steps
1. In Scenario A, select status **Available**, clear the custom price field completely, and tap **Save**.
2. Observe validation response.
3. In Scenario B, leave the status selector unchosen, enter price `1500`, and tap **Save**.
4. Observe validation response.

# Expected Result
1. The system blocks saving if either status or custom price is left empty.
2. Both status and price are mandatory fields on the day edit form; leaving one empty to change only the other is not permitted.
3. Form errors highlight the missing input requirement.

# Notes
- Requirement: UF-67 Notes (Closed question: "Can the status or the price be left empty, so that only one changes? No").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
