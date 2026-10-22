---
tc_id: TC-JOIN-003
title: Verify System Blocks Non-Citizen Iqama ID for Individual Lessor Registration
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| ID Type | Resident Iqama ID (Starts with 2) |
| Test ID Number | `2012345678` (10 digits) |
| Expected Error Message | `«الانضمام كفرد متاح للمواطنين السعوديين فقط. يمكن لغير السعودي الانضمام عبر شركة»` |

# Preconditions
1. User selects **Individual** (`فرد`) scope on the join application.

# Steps
1. Enter Iqama ID `2012345678` starting with digit `2` into the National ID field.
2. Complete remaining required fields.
3. Tap **Next** or attempt to proceed.
4. Observe the field-level validation and system response.

# Expected Result
1. The system detects that the ID begins with `2` (Resident Iqama).
2. Registration as an individual is blocked.
3. The exact Arabic validation message is displayed:
   `«الانضمام كفرد متاح للمواطنين السعوديين فقط. يمكن لغير السعودي الانضمام عبر شركة»`
4. The user cannot proceed until a valid Saudi National ID is provided, or switches to Company scope.

# Notes
- Requirement: UF-28 Error Flow E1.
- Non-Saudis are legally permitted to operate only through registered corporate entities.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
