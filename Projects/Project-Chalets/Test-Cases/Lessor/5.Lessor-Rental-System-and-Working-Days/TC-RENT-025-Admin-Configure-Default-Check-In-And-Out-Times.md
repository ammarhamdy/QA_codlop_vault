---
tc_id: TC-RENT-025
title: Verify Admin Updating Default Times Applies Exclusively to Newly Created Chalets
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Setting Field | Original Default | Updated Default |
| ------------- | ---------------- | --------------- |
| Default Check-in Time | `04:00 PM` | `02:00 PM` |
| Default Check-out Time | `12:00 PM` (Next day) | `11:00 AM` (Next day) |

# Preconditions
1. Existing published chalet `شاليه الصنوبر` was created under original default times (4:00 PM to 12:00 PM).
2. Admin user has Calendar Settings management permissions.

# Steps
1. In Admin Panel -> Calendar Settings, update default check-in to `02:00 PM` and check-out to `11:00 AM next day`.
2. Tap **Save Settings**.
3. Inspect the times settings of existing chalet `شاليه الصنوبر`.
4. As a lessor, create a completely new chalet ad draft and proceed to Step 5 (Times and Working Days).
5. Inspect the pre-populated check-in and check-out times on the new chalet form.

# Expected Result
1. The new default times apply strictly to newly created chalets.
2. The newly created chalet pre-populates with `02:00 PM` check-in and `11:00 AM next day` check-out.
3. Existing chalet `شاليه الصنوبر` retains its original times (`04:00 PM` to `12:00 PM`) without unintended alteration.

# Notes
- Requirement: UF-70 Main Flow Step 6 ("The default times affect only new chalets").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
