---
tc_id: TC-PKG-005
title: Verify System Blocks Package Selection When Another Payment Request Is Pending
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Pending Request ID | `PAY-2026-000101` |
| Pending Status | `Awaiting Payment` (or `Awaiting Approval`) |
| Blocking Message | `«لديك طلب دفع قيد المراجعة. ألغه أولًا أو انتظر القرار»` |

# Preconditions
1. Lessor already has an active, unresolved payment request `PAY-2026-000101`.
2. Lessor opens the application.

# Steps
1. Navigate to "Packages" (`الباقات`).
2. Attempt to select any package card to start a new subscription or upgrade.
3. Observe the system response and screen feedback.

# Expected Result
1. The system blocks creation of a secondary payment request.
2. The user is presented with the error message: `«لديك طلب دفع قيد المراجعة. ألغه أولًا أو انتظر القرار»`.
3. No duplicate or concurrent payment request is generated.

# Notes
- Requirement: UF-42 Error Flow E1 & UF-46 Alternative Flow A1.
- Only one pending payment request is permitted per lessor at any given time.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
