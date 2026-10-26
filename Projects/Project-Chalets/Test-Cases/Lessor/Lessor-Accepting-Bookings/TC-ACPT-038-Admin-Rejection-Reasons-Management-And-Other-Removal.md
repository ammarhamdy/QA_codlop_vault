---
tc_id: TC-ACPT-038
title: Admin Rejection Reasons Management - Edit Translated List and Removal of "Other" Option
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Action | Reason Item Changed | Expected System State |
| ------ | ------------------- | --------------------- |
| Edit Label | `لم يصل المبلغ` -> `لم تصل الحوالة المالية` | Updated text shown to lessors |
| Remove Option | Remove `أخرى` (Other) from list | Lessors can only select defined preset reasons |

# Preconditions
1. Admin is in the Booking Reception Settings section of the Admin Panel.

# Steps
1. Navigate to the **Rejection Reasons** configuration section.
2. Edit the translated text of an existing reason (e.g., change `لم يصل المبلغ` to `لم تصل الحوالة المالية`).
3. Delete or toggle off the `أخرى` (Other) option from the active reasons list.
4. Tap **"Save"**.
5. Log in as a lessor and open a pending booking rejection modal.
6. Verify the reasons available in the lessor rejection modal.

# Expected Result
1. The admin can edit and localize the rejection reasons list.
2. The admin is permitted to remove the "Other" option from the list (it is not mandatory to keep "Other").
3. In the lessor app, the rejection modal displays the modified reasons list without the "Other" option.

# Notes
- Requirement: UF-85 (Main Flow Step 3; Notes - closed questions: "Is the list of reasons mandatory to keep 'Other'? No, can remove the 'Other' option from reasons").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
