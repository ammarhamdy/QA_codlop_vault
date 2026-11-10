---
tc_id: TC-TND-005
title: Verify Error Handling When Expiration Date Is Set to Current or Past Date
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Past Expiration Date | `Yesterday's date` |
| Current Expiration Date | `Current timestamp` (same minute/hour) |
| Valid Project Details | Standard valid project information |
| Expected Error Message | `"Expiration date must be a future date."` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Fill all mandatory project details with valid information.
2. In the expiration date (`end_date`) field, select yesterday's date.
3. Click "Publish Tender" and observe the system response.
4. Update the expiration date to the exact current timestamp/current minute.
5. Click "Publish Tender" and observe the system response.

# Expected Result
1. The system detects that the expiration date is not strictly in the future.
2. The specific error message `"Expiration date must be a future date."` is displayed.
3. The form prevents submission, and user resumes at Step 2 to rectify the date.
4. Form inputs remain preserved.

# Notes
- Directly validates alternative flow E2 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
