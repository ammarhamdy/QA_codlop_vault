---
tc_id: TC-RAT-009
title: Verify Visible Rating Does Not Become Withheld If Dispute Is Raised Post-Publication
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking ID | `BK-7708` |
| Chalet Name | `شاليه الياسمين` |
| Rating Status | `Visible` |
| Dispute Type | Damage Claim / Deposit Dispute raised after checkout |

# Preconditions
1. Customer completed booking `BK-7708` and submitted a rating immediately after check-out.
2. The rating status is `Visible` and publicly displayed on `شاليه الياسمين` place page.
3. Lessor subsequently files a dispute against booking `BK-7708` (e.g., claiming property damage).

# Steps
1. As Lessor, file a dispute regarding booking `BK-7708`.
2. Confirm the dispute record is created with status `Open`.
3. Check the database/system status of the customer's previously published rating on `BK-7708`.
4. Open the public chalet page for `شاليه الياسمين` as an unauthenticated visitor.
5. Verify whether the rating remains visible and counts toward the average score.

# Expected Result
1. The rating status remains `Visible`.
2. The rating is NOT retroactively transitioned to `Withheld Until Dispute Closed`.
3. The review remains publicly visible on the chalet page and continues to be included in the average score calculation.

# Notes
- Requirement: UF-14 Notes (Closed question: "Does an already visible rating become Withheld when a dispute is opened later? NO").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
