---
tc_id: TC-RCVOFF-002
title: Verify Empty State Display When No Offers Have Been Submitted for a Tender
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-302` (`Residential Villa Extension`) |
| Tender Status | `Open` |
| Total Offers | `0` |
| Expected Message | `"No offers have been submitted for this tender yet."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-302` belongs to the owner, has status `Open`, and has received zero (0) offers.
3. User is on the Tender Details screen for `TND-302`.

# Steps
1. Click the "View Offers" button on the Tender Details screen.
2. Await system query.
3. Inspect the loaded screen container.
4. Verify the empty state notification and current tender status display.

# Expected Result
1. The system confirms that the total offers count for `TND-302` is 0.
2. An empty state view is presented with the explicit message: `"No offers have been submitted for this tender yet."`.
3. The current status of the tender (`Open`) is clearly displayed.
4. No broken card placeholders or unhandled error alerts appear.

# Notes
- Directly validates alternative flow A1 in UF-06.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
