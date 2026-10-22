---
tc_id: TC-BANK-027
title: OTP Verification - Reject Changes and Preserve Existing State on Wrong or Expired Verification Code
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Test Variant | Code Input | Expected Error Message | System Action |
| ------------ | ---------- | ---------------------- | ------------- |
| Incorrect OTP | `0000` (Incorrect code) | `الرمز غير صحيح. لم يُحفظ التغيير` | Changes not saved, no SMS |
| Expired OTP | Valid code entered after 5-minute validity window | `الرمز غير صحيح. لم يُحفظ التغيير` | Changes not saved, no SMS |

# Preconditions
1. Lessor is accepted and initiates a change action (Add in UF-71, Edit in UF-72, Delete in UF-73, or Assign in UF-75).
2. The OTP prompt screen is active, and the 4-digit code has been dispatched.

# Steps
1. Scenario A: Enter an incorrect 4-digit code (`0000`) and tap submit.
2. Observe error response and account state.
3. Scenario B: Trigger a new change action, wait > 5 minutes for the code to expire, then enter the received code.
4. Observe error response and account state.

# Expected Result
1. For both wrong and expired codes, the system displays the exact Arabic error message: `الرمز غير صحيح. لم يُحفظ التغيير`.
2. Absolutely no changes are committed to the bank account, chalet, or profile.
3. For Edit actions, previous values stay completely intact.
4. For Delete actions, the account is not deleted.
5. No post-change SMS notification is sent to the lessor.
6. The failed attempt is logged in the backend audit trail.

# Notes
- Requirement: UF-71 (E2), UF-72 (E1), UF-73 (E1), UF-75 (E1), UF-76 (E1, Step 2: 4 digits valid for 5 min; Notes: audit line written even when code fails).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
