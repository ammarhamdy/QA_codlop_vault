---
tc_id: TCInfo-031
title: Verify Profile Rejection When National ID Does Not Start With 1
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated Client | Logged-in user (`0505555551`) |
| National ID | `2000000008` (10 digits, passes checksum, but starts with 2) |
| ID Photo | `valid_id.jpg` |

# Preconditions
1. Client is registered and logged in.
2. Client is on the Profile page / Identity details section.

# Steps
1. Navigate to the Profile screen.
2. In the National ID field, enter `2000000008` (starts with 2 instead of 1).
3. Upload valid ID Photo (`valid_id.jpg`).
4. Tap "Save" / "Update Profile".

# Expected Result
1. The system evaluates the first digit of the entered National ID.
2. An inline validation error is displayed indicating that the National ID must start with 1 (e.g., "يجب أن يبدأ رقم الهوية الوطنية بالرقم 1").
3. Profile update is blocked and invalid ID is not saved.

# Notes
- Requirement rule: `يبدأ بـ 1 ويجتاز خوارزمية التحقق`.
- In Saudi identity standards, national IDs starting with 1 denote Saudi citizens.

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:15*
