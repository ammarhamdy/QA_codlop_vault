---
tc_id: TC-JOIN-009
title: Verify System Rejects Join Application for Permanently Banned ID or CR
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Identifier Type | Banned Identifier Value | Expected Error Message |
| --------------- | ----------------------- | ---------------------- |
| National ID (Individual) | `1099887766` (Permanently Banned) | `«لا يمكن قبول طلب انضمام بهذه البيانات. تواصل مع الدعم»` |
| CR Number (Company) | `1010009988` (Permanently Banned) | `«لا يمكن قبول طلب انضمام بهذه البيانات. تواصل مع الدعم»` |

# Preconditions
1. National ID `1099887766` and CR `1010009988` are recorded on the platform permanent ban blacklist.
2. A customer attempts to apply using either of these blacklisted credentials.

# Steps
1. Under Individual scope, enter banned National ID `1099887766` and submit.
2. Observe validation error and blocking behavior.
3. In a separate Company application, enter banned CR `1010009988` and submit.
4. Observe validation error.

# Expected Result
1. The system blocks join applications containing permanently banned credentials.
2. The user sees the error message: `«لا يمكن قبول طلب انضمام بهذه البيانات. تواصل مع الدعم»`.
3. No draft is finalized or forwarded to administrative review.

# Notes
- Requirement: UF-28 Error Flow E6.
- Prevents banned operators from re-entering the platform under new phone numbers or secondary accounts.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
