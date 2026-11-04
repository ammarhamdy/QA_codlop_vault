---
tc_id: TC-OFFDTL-003
title: Verify Disabled Accept Action When Another Offer Has Already Been Accepted
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Current Offer ID | `OFF-1003` (Status: `Pending`) |
| Rival Accepted Offer | `OFF-1002` (Status: `Accepted`) |
| Parent Tender Status | `Awarded` |
| Expected Badge / Notice | `"Another offer has already been accepted for this tender"` |

# Preconditions
1. Tender Owner is authenticated.
2. The parent tender was awarded to another professional (`OFF-1002` was accepted).
3. Offer `OFF-1003` remains associated with the tender in `Pending` status.

# Steps
1. Navigate to the Offer Details screen for pending offer `OFF-1003`.
2. Inspect the offer status badge.
3. Check the state and visibility of the "Accept Offer" action.
4. Verify the presence of the informational notification banner.

# Expected Result
1. The status badge displays `Pending`.
2. The "Accept Offer" button is disabled or hidden.
3. An explicit informational message is displayed: `"Another offer has already been accepted for this tender"`.
4. Attempting to trigger an acceptance action is blocked per BR-10 ("A Tender Owner can accept only one offer per tender").

# Notes
- Directly validates alternative flow A1 in UF-07 and BR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
