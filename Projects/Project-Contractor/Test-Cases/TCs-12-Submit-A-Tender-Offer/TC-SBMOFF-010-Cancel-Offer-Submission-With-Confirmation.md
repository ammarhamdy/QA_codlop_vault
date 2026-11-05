---
tc_id: TC-SBMOFF-010
title: Verify Discard Confirmation and Navigation on Canceling Offer Submission
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Partially Filled Name | `Tariq Al-Harbi` |
| Partially Filled Price | `95,000` |
| Confirmation Dialogue Text | `"Discard offer?"` |
| Destination View | Public Tender Details (`SCR-PUB-02`, UF-11) |

# Preconditions
1. Target tender is `Open`.
2. Professional is on the Offer Submission form (`SCR-OFF-04`) with partial details entered.

# Steps
1. Enter partial information into the Name and Price fields.
2. Click the "Cancel" or "Back" button.
3. Observe the confirmation dialogue prompted by the system.
4. Confirm discard by clicking "Discard" / "Yes".
5. Inspect the resulting screen and verify form persistence.

# Expected Result
1. The application prompts the user with the confirmation: `"Discard offer?"`.
2. Upon confirmation, the form data is completely cleared.
3. No offer record is created or saved as a draft.
4. The user is redirected back to the Public Tender Details screen (`UF-11`).

# Notes
- Directly validates alternative flow A2 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
