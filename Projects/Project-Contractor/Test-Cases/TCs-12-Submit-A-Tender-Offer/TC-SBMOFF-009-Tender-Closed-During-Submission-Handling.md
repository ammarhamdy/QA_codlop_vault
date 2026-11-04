---
tc_id: TC-SBMOFF-009
title: Verify System Rejection When Submitting an Offer Against a Concurrently Closed or Expired Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-809` |
| Initial State at Form Open | Status: `Open` |
| State at Form Submission | Status changed to `Closed` (or reached expiration timestamp) |
| Expected Error Message | `"This tender is no longer accepting offers."` |

# Preconditions
1. Professional opens the Offer Submission form while tender `TND-809` is `Open`.
2. Before the professional submits the form, the Tender Owner manually closes the tender (or the tender expires).
3. The professional attempts to complete the submission.

# Steps
1. Open the Offer Submission form for tender `TND-809`.
2. (In background or separate session) Close or expire tender `TND-809`.
3. In the professional's form, fill in all mandatory fields with valid data.
4. Click the "Submit Offer" button.
5. Await system processing and inspect the response.

# Expected Result
1. The server performs an atomic pre-creation check on the tender's current status and expiration timestamp.
2. The server detects that the tender is no longer active and `Open`.
3. The submission is rejected with the specific error message: `"This tender is no longer accepting offers."`.
4. No offer record is created in the database.
5. Adheres strictly to BR-04, BR-06, and BR-07 ("Closed or expired tenders cannot receive new offers").

# Notes
- Directly validates alternative flow E3 in UF-12 and BR-04/BR-06/BR-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
