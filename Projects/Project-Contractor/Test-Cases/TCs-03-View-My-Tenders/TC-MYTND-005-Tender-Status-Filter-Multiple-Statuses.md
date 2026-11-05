---
tc_id: TC-MYTND-005
title: Verify List Filtering for Closed, Expired, and Awarded Tenders
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Test User | Owner with tenders in each lifecycle state |
| Filter Option 1 | `Closed` |
| Filter Option 2 | `Expired` |
| Filter Option 3 | `Awarded` |

# Preconditions
1. Tender Owner is authenticated.
2. The user has at least one tender in each of `Closed`, `Expired`, and `Awarded` states.
3. User is on the "My Tenders" screen.

# Steps
1. Navigate to the "My Tenders" screen.
2. Select the `Closed` status filter and inspect displayed tenders.
3. Select the `Expired` status filter and inspect displayed tenders.
4. Select the `Awarded` status filter and inspect displayed tenders.
5. Clear or reset the filter back to "All" (if available) and inspect displayed tenders.

# Expected Result
1. When `Closed` is selected, only tenders marked as `Closed` are rendered.
2. When `Expired` is selected, only tenders past their expiration date marked as `Expired` are rendered.
3. When `Awarded` is selected, only tenders with an accepted offer marked as `Awarded` are rendered.
4. Resetting the filter restores the complete list of all owner tenders.

# Notes
- Comprehensive verification of status filtering under alternative flow A2 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
