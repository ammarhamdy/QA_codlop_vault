---
tc_id: TC-TNDEDT-011
title: Verify Error Handling and Form Preservation on Database or Network Persistence Failure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-211` |
| Modified Values | Valid updated description and adjusted budget |
| Simulated State | Database persistence failure / HTTP 500 error on save |
| Expected Error Message | `"Unable to save changes. Please try again."` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Edit Tender form and has made valid modifications to the fields.
3. Backend save service is simulated to return an error/timeout during the save operation.

# Steps
1. Make valid modifications to the tender fields.
2. Simulate a backend persistence error or network interruption.
3. Click the "Save Changes" button.
4. Await system processing and inspect the resulting error message and form state.

# Expected Result
1. The system catches the failure gracefully without crashing.
2. The specific actionable error message `"Unable to save changes. Please try again."` is displayed.
3. The modified values remain intact in the form fields, preventing data loss.
4. The system resumes at Step 4, enabling the user to retry saving when the network or database recovers.

# Notes
- Directly validates alternative flow E5 and post-failure requirement in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
