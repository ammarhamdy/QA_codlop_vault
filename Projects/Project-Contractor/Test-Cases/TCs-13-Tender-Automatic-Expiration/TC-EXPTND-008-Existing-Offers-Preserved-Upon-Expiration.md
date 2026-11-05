---
tc_id: TC-EXPTND-008
title: Verify Existing Received Offers Remain Fully Preserved When Tender Expires
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-909` |
| Pre-Existing Offers | `OFF-301` (`Pending`), `OFF-302` (`Pending`) |

# Preconditions
1. Tender `TND-909` has received two offers (`OFF-301` and `OFF-302`) while in `Open` status.
2. The tender's expiration date elapses without an offer being accepted.
3. System expiration worker executes and updates `TND-909` to `Expired`.

# Steps
1. Execute the expiration worker batch job.
2. Verify that tender `TND-909` transitions to `Expired`.
3. Log in as the Tender Owner and navigate to "View Offers" for `TND-909`.
4. Inspect the received offers list.
5. Inspect database records for `OFF-301` and `OFF-302` in `tender_offers`.

# Expected Result
1. The expiration process alters only the parent tender record and does not delete or purge submitted offers.
2. Offers `OFF-301` and `OFF-302` remain associated with `TND-909`.
3. Both offers maintain their submitted pricing, duration, attachments, and `Pending` status.
4. The Tender Owner can continue to view and review the submitted offers under the expired tender.

# Notes
- Validates data preservation rules under UF-13 and BR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
