---
tc_id: TC-AUTH-015
title: Verify Invalidation of Verification Code (OTP) After 5 Failed Attempts
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
| Mobile Number | `0501111111` |
| Valid OTP Generated | `1234` |
| Failed Attempts 1 to 5 | `0001`, `0002`, `0003`, `0004`, `0005` |
| Attempt 6 (Correct OTP) | `1234` |

# Preconditions
1. Client has requested an OTP and is on the verification screen.
2. System has generated code `1234`.

# Steps
1. Enter incorrect code `0001` (Attempt 1) and submit. Verify failure.
2. Enter incorrect code `0002` (Attempt 2) and submit. Verify failure.
3. Enter incorrect code `0003` (Attempt 3) and submit. Verify failure.
4. Enter incorrect code `0004` (Attempt 4) and submit. Verify failure.
5. Enter incorrect code `0005` (Attempt 5) and submit.
6. Observe system response on the 5th failure.
7. Enter the originally valid code `1234` (Attempt 6) and submit.

# Expected Result
1. Attempts 1 to 4 show incorrect code error with counter/warning of remaining attempts.
2. On Attempt 5, the system invalidates the OTP and displays a message stating the code has been invalidated due to maximum failed attempts (e.g., "تم إبطال رمز التحقق لتجاوز عدد المحاولات المسموح بها (5 محاولات)").
3. When attempting to use the correct code (`1234`) after the 5th failure, the system rejects it as invalidated.
4. The user is required to request a new OTP.

# Notes
- Verifies security rule in Section 4: `المحاولات الخاطئة: 5، ثم يُبطل الرمز`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
