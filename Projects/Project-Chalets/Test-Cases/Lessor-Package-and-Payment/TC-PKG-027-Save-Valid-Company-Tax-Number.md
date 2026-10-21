---
tc_id: TC-PKG-027
title: Verify Saving Valid Optional 15-Digit Company Tax Number
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value | Validation Rules |
| ----- | ----- | ---------------- |
| Lessor Type | Company (`منشأة / شركة`) | Required actor precondition |
| Tax Number | `300012345678903` | Exactly 15 digits, starts with 3, ends with 3 |
| Optional Field Test | `""` (Empty string) | Allowed to remain empty |

# Preconditions
1. Logged-in user is an accepted corporate/company lessor.
2. User is on the "Billing Data" (`البيانات الضريبية / الفوترة`) screen.

# Steps
1. Verify the tax number field is marked as optional.
2. Enter valid tax number `300012345678903`.
3. Tap **Save** (`حفظ`).
4. Re-open "Billing Data" and verify the stored value.
5. In another session, clear the field entirely and tap **Save**.

# Expected Result
1. The 15-digit tax number starting and ending with 3 passes format validation and is saved successfully.
2. Saving the field empty is allowed since the field is strictly optional.
3. The stored tax number does not appear on previously issued payment documents and cannot alter historical invoices.

# Notes
- Requirement: UF-47 Main Flow Steps 1 to 3 & Alternative Flow A1.
- Number format rule: 15 digits, starts with 3, ends with 3.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
