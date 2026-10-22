---
tc_id: TC-JOIN-012
title: Verify System Redirects User with Open Application to Existing Submission
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Open Application ID | `APP-2026-00045` |
| Application Status | `Under Review` (`قيد المراجعة`) |
| Redirection Notice | `«لديك طلب قيد المراجعة»` |

# Preconditions
1. User has already submitted join application `APP-2026-00045`.
2. The application is open (`Under Review` or `Submitted`).

# Steps
1. Navigate to "My Account" (`حسابي`).
2. Tap **"Join as Lessor"** (`انضم كمؤجر`).
3. Observe system routing and displayed banner.

# Expected Result
1. The user is not allowed to initiate a second concurrent application.
2. The system redirects directly to the status tracking page for existing application `APP-2026-00045`.
3. The screen displays the informational banner: `«لديك طلب قيد المراجعة»`.

# Notes
- Requirement: UF-28 Alternative Flow A1 ("User already has an open application -> Opens the existing one: «لديك طلب قيد المراجعة»").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
