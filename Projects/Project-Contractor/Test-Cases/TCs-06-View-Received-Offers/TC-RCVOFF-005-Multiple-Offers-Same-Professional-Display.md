---
tc_id: TC-RCVOFF-005
title: Verify Distinct Display of Multiple Offers Submitted by the Same Professional
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-06-View-Received-Offers.md
tags:
  - test-case
run_result: fail
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-305` |
| Professional | `Engineer Faisal Al-Otaibi` |
| Offer A | ID: `OFF-901`, Price: `95,000 SAR`, Duration: `30 Days`, Time: `10:00 AM` |
| Offer B | ID: `OFF-902`, Price: `110,000 SAR`, Duration: `40 Days` (Includes Premium Material), Time: `02:30 PM` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-305` is owned by the user.
3. The same professional (`Engineer Faisal Al-Otaibi`) submitted two separate offers (`OFF-901` and `OFF-902`) for `TND-305` per BR-08.

# Steps
1. Navigate to the View Received Offers screen for tender `TND-305`.
2. Locate the offers submitted by `Engineer Faisal Al-Otaibi`.
3. Verify that both submissions appear as separate distinct cards in the listing.
4. Compare the individual pricing, duration, and timestamp details on each card.

# Expected Result
1. The system renders each offer as a separate, independently clickable entity.
2. Offer `OFF-901` displays `95,000 SAR` and `30 Days`.
3. Offer `OFF-902` displays `110,000 SAR` and `40 Days`.
4. The system does not overwrite, merge, or collapse the duplicate professional's submissions.

# Notes
- Directly validates alternative flow A3 in UF-06 and BR-08 ("The same professional can submit multiple offers for the same tender").

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:20*
