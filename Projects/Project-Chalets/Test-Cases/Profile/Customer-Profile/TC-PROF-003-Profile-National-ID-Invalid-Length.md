---
tc_id: TC-PROF-003
title: Verify Profile Rejection When National ID Length Is Not 10 Digits
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated Client | Logged-in client (`0505555552`) |
| Boundary Value 1 (9 Digits) | `100000000` |
| Boundary Value 2 (11 Digits) | `10000000080` |
| ID Photo | `valid_id.jpg` |

# Preconditions
1. Client is registered and logged in.
2. Client is on the Profile page / Identity details section.

# Steps
1. Navigate to the Profile screen.
2. In the National ID field, enter the 9-digit value (`100000000`).
3. Tap "Save". Record the system response.
4. Replace the National ID with the 11-digit value (`10000000080`).
5. Tap "Save". Record the system response.

# Expected Result
1. For input with fewer than 10 digits: The system rejects submission with an error stating the National ID must consist of exactly 10 digits (e.g., "رقم الهوية يجب أن يتكون من 10 أرقام").
2. For input with more than 10 digits: The field restricts input past 10 digits or displays an error rejecting the length.
3. Profile update is blocked in all invalid length cases.

# Notes
- Requirement specifies: `رقم الهوية الوطنية: نص (10 أرقام)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:15*
