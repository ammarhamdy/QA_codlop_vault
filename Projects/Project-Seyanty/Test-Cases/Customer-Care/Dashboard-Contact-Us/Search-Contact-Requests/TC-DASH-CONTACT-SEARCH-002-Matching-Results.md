---
tc_id: TC-DASH-CONTACT-SEARCH-002
title: Matching Results
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
| Field         | Value                |
| ------------- | -------------------- |
| Search Value  | jane.smith@example.com |

# Preconditions
- User is an authorized dashboard user.
- One or more Contact Us requests match the search criteria.

# Steps
1. Open the Customer Care module in the dashboard.
2. Open the Contact Us requests.
3. Enter a search value that matches existing requests.
4. Perform the search.
5. Observe the system response.

# Expected Result
- The system displays the Contact Us requests that match the search criteria.

# Notes
- Applies to AC-02 — Matching Results.

# Attachments