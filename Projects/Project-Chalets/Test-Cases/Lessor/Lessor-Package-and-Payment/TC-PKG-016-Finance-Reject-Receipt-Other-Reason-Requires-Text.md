---
tc_id: TC-PKG-016
title: Verify Selecting Other Rejection Reason Requires Mandatory Written Details
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Rejection Type | "Other" (`سبب آخر`) |
| Empty Detail Text | `""` (Empty string) |
| Valid Detail Text | `اسم المحول يختلف تماماً عن بيانات الحساب المسجل ويحتاج توضيح رسمي` |

# Preconditions
1. Payment request `PAY-2026-000109` is in `Awaiting Approval` status.
2. Finance admin initiates rejection.

# Steps
1. In Finance admin view, click **Reject** on `PAY-2026-000109`.
2. Select reason **"Other"** (`سبب آخر`).
3. Leave the explanation text field blank and tap **Confirm Rejection**.
4. Observe system validation.
5. Enter valid written explanation: `اسم المحول يختلف تماماً عن بيانات الحساب المسجل ويحتاج توضيح رسمي`.
6. Tap **Confirm Rejection**.

# Expected Result
1. Selecting "Other" requires mandatory written details; submitting without details is blocked with a validation error.
2. Once valid explanation text is provided, rejection completes successfully.
3. The custom written reason is recorded in the audit log and delivered to the lessor in the rejection notification.

# Notes
- Requirement: UF-44 Notes (Closed question: "Does 'other' require written details? Yes require written details").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
