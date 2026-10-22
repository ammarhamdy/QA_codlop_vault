---
tc_id: TC-BANK-030
title: View Bank Accounts - Zero Accounts Empty State, Dashboard Alert Bar, and Hidden Book Button
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| UI Element | Expected String / State |
| ---------- | ----------------------- |
| Bank Accounts Empty State | `أضف حسابًا ليظهر للعملاء عند الحجز. بدون حساب لا يظهر زر الحجز` |
| Lessor Dashboard Bar | `أضف حسابًا بنكيًا ليتمكن العملاء من الحجز` |
| Chalet Book Button | Hidden / Not rendered for customers |

# Preconditions
1. User is an accepted lessor who possesses 0 saved bank accounts.
2. Lessor has one or more chalets.

# Steps
1. Navigate to the Lessor Dashboard.
2. Check for the presence of the warning notification bar.
3. Navigate to "Bank Accounts" (`الحسابات البنكية`).
4. Observe the content displayed when no accounts exist.
5. In a separate customer session, navigate to the public listing/details of one of the lessor's chalets.
6. Verify whether the "Book" (`احجز`) button is visible.

# Expected Result
1. The Lessor Dashboard displays the prompt bar: `أضف حسابًا بنكيًا ليتمكن العملاء من الحجز`.
2. The Bank Accounts screen shows the informative empty message: `أضف حسابًا ليظهر للعملاء عند الحجز. بدون حساب لا يظهر زر الحجز` alongside an "Add Account" button.
3. For customers viewing any chalet owned by this lessor, the "Book" button is hidden.

# Notes
- Requirement: UF-77 (Main Flow Steps 1-4, Alternative Flow A2).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
