---
tc_id: TC-PKG-017
title: Verify Lessor Profile Receives Warning Tag After Three Rejected Receipts
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
| Lessor ID | `LSR-3001` |
| Rejection Count Milestone | `3` rejected receipts |
| Expected Tag | Finance Warning Tag (`3 إيصالات مرفوضة`) |

# Preconditions
1. Lessor `LSR-3001` has previously submitted 2 bank transfer receipts that were rejected by Finance.
2. Lessor submits a 3rd receipt for payment review.

# Steps
1. As Finance admin, review and reject the 3rd receipt submitted by `LSR-3001`.
2. Confirm the rejection decision.
3. Open lessor `LSR-3001`'s profile in the Admin / Finance management console.
4. Verify the badges and tags displayed on the lessor's administrative profile.
5. Verify whether an account suspension or monetary penalty was applied to the lessor account.

# Expected Result
1. Upon the 3rd rejected receipt, a visible warning tag appears on the lessor's profile for Finance staff.
2. The tag alerts Finance to exercise increased scrutiny on future payment submissions from this user.
3. The tag is informational for Finance only; it does NOT trigger an automatic penalty, account suspension, or fine.

# Notes
- Requirement: UF-44 Alternative Flow A3 & Notes ("The same lessor has 3 rejected receipts -> A tag appears in the lessor's profile for Finance. It is not a penalty").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
