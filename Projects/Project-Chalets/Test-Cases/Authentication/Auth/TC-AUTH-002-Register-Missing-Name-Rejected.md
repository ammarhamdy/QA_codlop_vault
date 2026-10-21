---
tc_id: TC-AUTH-002
title: Verify Registration Rejection When User Name Is Missing
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
| Mobile Number | `0502222222` |
| User Name | `[Empty]` |

# Preconditions
1. User is on the Client Registration screen.
2. Mobile number is valid and unregistered.

# Steps
1. Navigate to the Registration screen.
2. Enter the valid Mobile Number (`0502222222`).
3. Leave the User Name field completely empty (or enter whitespace only).
4. Tap the "Register" / "Submit" button.

# Expected Result
1. The system blocks form submission.
2. An inline validation error is displayed indicating that the User Name is required (e.g., "الاسم مطلوب").
3. No SMS OTP is requested or sent.

# Notes
- Verifies that User Name is mandatory on registration while secondary profile fields are deferred.

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:15*
