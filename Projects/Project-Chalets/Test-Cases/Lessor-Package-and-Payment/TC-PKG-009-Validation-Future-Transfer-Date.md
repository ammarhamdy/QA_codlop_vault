---
tc_id: TC-PKG-009
title: Verify Validation Blocks Future Transfer Date Selection
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
| Current Date | `2026-10-21` |
| Invalid Future Date | `2026-10-22` (Tomorrow) |
| Validation Error | `«تاريخ التحويل لا يمكن أن يكون بعد اليوم»` |

# Preconditions
1. Lessor is on the bank transfer submission form with a valid receipt attached.

# Steps
1. Open the transfer date picker.
2. Attempt to select a future date (e.g., `2026-10-22`).
3. If the date picker allows future selection or date is manually entered, tap **Submit**.
4. Observe the validation message and form state.

# Expected Result
1. Dates after today are disabled in the date picker interface.
2. If submitted with a future date, the submission is blocked with the error: `«تاريخ التحويل لا يمكن أن يكون بعد اليوم»`.
3. The request remains in `Awaiting Payment` until a valid past or present date is selected.

# Notes
- Requirement: UF-43 Error Flow E2 ("Transfer date is after today -> «تاريخ التحويل لا يمكن أن يكون بعد اليوم»").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
