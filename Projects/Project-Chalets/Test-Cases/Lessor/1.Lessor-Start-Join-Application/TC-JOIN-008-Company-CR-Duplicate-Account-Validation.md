---
tc_id: TC-JOIN-008
title: Verify System Blocks Commercial Registration Number Already Linked to Another Account
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Duplicate CR Number | `1010887766` (Already active on Company Account A) |
| Applicant Account | Customer Account B |
| Expected Error Message | `«هذا السجل التجاري مسجل لحساب آخر. تواصل معنا إن كنت المفوّض الجديد»` |

# Preconditions
1. Company Account A is already registered with CR `1010887766`.
2. A different user (Account B) attempts to create a Company lessor profile.

# Steps
1. As Account B, open Company join application.
2. Enter CR number `1010887766`.
3. Fill remaining fields and trigger submission or field validation.
4. Observe system response.

# Expected Result
1. The system blocks the application using a duplicate CR number.
2. The user is presented with the message:
   `«هذا السجل التجاري مسجل لحساب آخر. تواصل معنا إن كنت المفوّض الجديد»`
3. The duplicate registration is halted, protecting corporate entity accounts from unauthorized duplication.

# Notes
- Requirement: UF-28 Error Flow E5.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
