---
tc_id: TC-DASH-CONTACT-SEARCH-003
title: No Matching Results
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-CONTACT-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                   |
| ------------- | ----------------------- |
| Search Value  | no-matching-value-xyz   |

# Preconditions
- User is an authorized dashboard user.
- No Contact Us requests match the search criteria.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. Enter a search value that does not match any request.
4. Perform the search.
5. Observe the system response.

# Expected Result
- The system displays an appropriate no-results message.

# Notes
- Applies to AC-03 — No Matching Results.

# Attachments