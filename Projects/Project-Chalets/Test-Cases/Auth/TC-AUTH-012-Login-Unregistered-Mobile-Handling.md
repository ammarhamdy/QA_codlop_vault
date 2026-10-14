---
tc_id: TC-AUTH-012
title: Verify System Handling During Login with Unregistered Mobile Number
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
| Mobile Number | `0509999999` (Valid Saudi mobile number format, but not registered in the system) |

# Preconditions
1. Mobile number `0509999999` does not exist in the platform database (neither active nor scheduled).
2. Mobile application is opened on the Login screen.

# Steps
1. Navigate to the Login screen.
2. Enter the unregistered Mobile Number (`0509999999`).
3. Tap "Log In" / "Continue".

# Expected Result
1. The system detects that the mobile number is not registered.
2. The user is informed with an appropriate message (e.g., "رقم الجوال غير مسجل مسبقاً") or is automatically directed to the registration flow to complete profile details.
3. The system does not allow an unauthenticated user to bypass into an active session.

# Notes
- Client.md states: `العميل، شخص مسجّل في المنصة برقم جواله ويدخل برمز تحقق`.
- Ambiguity to clarify with product team: Whether an unregistered number triggers an explicit error message prompting the user to register, or seamlessly routes into the registration stepper.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
