---
tc_id: TC-AUTH-003
title: Verify Submit Action Remains Disabled When Mobile Number Field Is Empty
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-01-Tender-Owner-Authentication.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number Field | `[Empty]` / Whitespace |
| Button Label | `"Send OTP"` |

# Preconditions
1. The Tender Owner authentication screen (`SCR-AUTH-01`) is open.
2. User is unauthenticated.

# Steps
1. Navigate to the Tender Owner Authentication screen.
2. Inspect the initial state of the "Send OTP" button when the mobile number input field is empty.
3. Click into the mobile number input field and immediately click out (blur) without typing any value.
4. Enter only whitespace characters into the mobile number field and inspect the button state.
5. Attempt to click or trigger the "Send OTP" button.

# Expected Result
1. The "Send OTP" button remains disabled as long as the mobile number field is empty or contains only whitespace.
2. The system does not dispatch any OTP request or navigate away from the login screen.
3. No unhandled errors or server requests occur.

# Notes
- Verifies input requirement condition for initiating Step 1 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
