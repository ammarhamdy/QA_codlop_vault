---
tc_id: TC-BANK-028
title: OTP Security - Five Consecutive Failed Attempts Triggers 15-Minute Account Lockout
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Parameter | Value |
| --------- | ----- |
| Max Consecutive Wrong Attempts | `5` |
| Lockout Duration | `15 minutes` |
| Scope of Lockout | Bank account modification flows AND System Login |

# Preconditions
1. Lessor is accepted and initiates a bank change operation requiring OTP.
2. Lessor is at the verification code entry screen.

# Steps
1. Enter an incorrect 4-digit code (Attempt 1). Confirm error is displayed.
2. Enter an incorrect code (Attempt 2).
3. Enter an incorrect code (Attempt 3).
4. Enter an incorrect code (Attempt 4).
5. Enter an incorrect code (Attempt 5).
6. Attempt to enter any code on Attempt 6.
7. Attempt to perform another bank change or log out and attempt to log back into the system.

# Expected Result
1. On the 5th consecutive wrong attempt, the system locks the lessor's verification/login capability for 15 minutes.
2. Further OTP submission is blocked until the 15-minute cooldown timer elapses.
3. As defined by login rules, the 15-minute lock applies to both bank account changes and application login.

# Notes
- Requirement: UF-76 (Error Flow E2; Notes - closed questions: "Does the 15-minute lock apply only to bank changes, or also to login? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
