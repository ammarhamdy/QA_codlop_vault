---
tc_id: TC-AUTH-002
title: Verify Validation and Inline Error Handling for Invalid Mobile Number Formats
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Invalid Mobile Format (Letters) | `050ABCD123` |
| Invalid Mobile Format (Symbols) | `+966-50@#$12` |
| Invalid Mobile Format (Incomplete) | `05012` |
| Expected Error Message | `"Please enter a valid mobile number."` |

# Preconditions
1. The Tender Owner authentication / login screen (`SCR-AUTH-01`) is open and ready for input.
2. User is unauthenticated.

# Steps
1. Navigate to the Tender Owner Authentication / Login screen.
2. Enter an invalid mobile number containing alphabetical characters (e.g., `050ABCD123`).
3. Observe the system response and the state of the "Send OTP" action.
4. Clear the field and enter an invalid mobile number containing special characters/symbols (e.g., `+966-50@#$12`).
5. Observe the system response and the state of the "Send OTP" action.
6. Clear the field and enter an incomplete mobile number sequence (e.g., `05012`).
7. Observe the system response and attempt to click "Send OTP" if clickable.

# Expected Result
1. The system detects the invalid mobile number format upon input/blur.
2. An inline error message is displayed: `"Please enter a valid mobile number."`.
3. The submit / "Send OTP" action is disabled, preventing OTP generation.
4. The user remains on Step 1 of the authentication flow.

# Notes
- Directly validates alternative flow E1 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
