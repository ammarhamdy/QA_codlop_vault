---
tc_id: TC-ACPOFF-005
title: Verify System Rejects Accepting a Second Offer on an Awarded Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-505` (Status: `Awarded`) |
| Previously Accepted Offer | `OFF-501` (Status: `Accepted`) |
| Secondary Pending Offer | `OFF-502` (Status: `Pending`) |
| Expected Error Message | `"An offer has already been accepted for this tender."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-505` was already awarded because offer `OFF-501` was previously accepted.
3. User opens a stale browser tab or triggers a direct API call attempting to accept offer `OFF-502`.

# Steps
1. Attempt to trigger acceptance on `OFF-502` (via concurrent browser session or direct POST `/api/offers/502/accept`).
2. Observe system validation and transaction response.
3. Check the resulting status of `OFF-502` and `TND-505`.

# Expected Result
1. The system verifies that an offer has already been accepted for tender `TND-505`.
2. The transaction aborts immediately without modifying any records.
3. The error message `"An offer has already been accepted for this tender."` is displayed.
4. Offer `OFF-502` remains `Pending`.
5. Only one offer (`OFF-501`) remains `Accepted`, enforcing BR-10 ("A Tender Owner can accept only one offer per tender").

# Notes
- Directly validates alternative flow E1 in UF-08 and BR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
