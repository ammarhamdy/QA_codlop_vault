---
tc_id: TC-PROF-004
title: Verify Profile Rejection When National ID Fails Checksum Algorithm
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
| Authenticated Client | Logged-in client (`0505555553`) |
| National ID (Invalid Checksum) | `1000000001` (Starts with 1, 10 digits, but fails modified Luhn checksum algorithm) |
| ID Photo | `valid_id.jpg` |

# Preconditions
1. Client is registered and logged in.
2. Client is on the Profile page / Identity details section.

# Steps
1. Navigate to the Profile screen.
2. Enter the National ID `1000000001` (valid structure but invalid checksum check digit).
3. Upload valid ID Photo (`valid_id.jpg`).
4. Tap "Save" / "Update Profile".

# Expected Result
1. The system evaluates the National ID against the official verification algorithm.
2. The verification fails.
3. An error message is displayed indicating the National ID is invalid (e.g., "رقم الهوية الوطنية غير صحيح").
4. Profile update is blocked and invalid ID is not saved.

# Notes
- Requirement rule: `يجتاز خوارزمية التحقق`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:15*
