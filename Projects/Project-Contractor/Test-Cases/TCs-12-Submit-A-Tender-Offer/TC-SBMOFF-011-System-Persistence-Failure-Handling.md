---
tc_id: TC-SBMOFF-011
title: Verify System Error Handling and Form Preservation on Server Persistence Failure
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
| Filled Offer Fields | Complete valid contact and commercial proposal data |
| Simulated Error | Database connection loss / HTTP 500 Internal Server Error |
| Expected Error Message | `"Unable to submit your offer. Please try again."` |

# Preconditions
1. Target tender is `Open`.
2. Professional has filled all mandatory fields with valid data.
3. Backend offer persistence service is configured to simulate an error/timeout on submit.

# Steps
1. Fill in all required fields on the Offer Submission form.
2. Trigger the network/server persistence failure condition.
3. Click the "Submit Offer" button.
4. Await system processing and inspect the response.
5. Check if entered form data is retained.

# Expected Result
1. The application catches the persistence failure gracefully.
2. The specific actionable error message is displayed: `"Unable to submit your offer. Please try again."`.
3. No corrupted or incomplete offer record is created in the database.
4. All entered form data (Name, Phone, Price, Duration, Description) remains intact on the screen, allowing the user to retry without re-entering values.
5. The system resumes at Step 6.

# Notes
- Directly validates alternative flow E4 and post-failure requirement in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
