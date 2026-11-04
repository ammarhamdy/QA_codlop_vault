---
tc_id: TC-TND-012
title: Verify System Error Handling and Form Preservation on Database or Network Persistence Failure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender Title | `Highway Bridge Expansion Joint Repair` |
| Valid Form Inputs | Complete valid project information |
| Simulated System State | Network interruption or database persistence failure (HTTP 500 / Timeout) |
| Expected Error Message | `"Unable to create tender. Please try again."` |

# Preconditions
1. Tender Owner is authenticated.
2. Form fields are completely and correctly filled.
3. Backend database or network connection is intercepted/simulated to fail during the save operation.

# Steps
1. Navigate to Create Tender form and fill all required fields with valid data.
2. Simulate a network drop or database failure prior to processing completion.
3. Click "Publish Tender".
4. Await system processing and inspect system feedback and form state.

# Expected Result
1. The system handles the persistence exception gracefully without an unhandled crash.
2. The specific actionable error message `"Unable to create tender. Please try again."` is displayed.
3. The tender is not created in the database.
4. All entered form values remain intact on the screen, allowing the user to retry publishing without re-typing.
5. The system resumes at Step 4.

# Notes
- Directly validates alternative flow E4 and post-failure requirement in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
