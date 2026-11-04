---
tc_id: TC-AUTH-004
title: Verify System Error Handling During SMS Gateway Failure or Network Timeout
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
| Mobile Number | `+966501234567` |
| Network / Service State | Simulated SMS gateway outage / HTTP 504 Gateway Timeout |
| Expected Error Message | `"Failed to send verification code. Please check your network and try again."` |

# Preconditions
1. The Tender Owner authentication screen (`SCR-AUTH-01`) is open.
2. The backend SMS gateway service is temporarily disabled, unreachable, or returning an error/timeout.
3. User is unauthenticated.

# Steps
1. Navigate to the Tender Owner Authentication screen.
2. Enter a valid mobile phone number (`+966501234567`).
3. Click the "Send OTP" button while the SMS service is in a failure/timeout state.
4. Wait for system error response.

# Expected Result
1. The system catches the gateway failure or network timeout.
2. An explicit error message is displayed: `"Failed to send verification code. Please check your network and try again."`.
3. The system does not navigate to the OTP verification screen.
4. The flow resumes at Step 1, allowing the user to retry when network/service is restored.

# Notes
- Directly validates alternative flow E2 in UF-01.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:48*
