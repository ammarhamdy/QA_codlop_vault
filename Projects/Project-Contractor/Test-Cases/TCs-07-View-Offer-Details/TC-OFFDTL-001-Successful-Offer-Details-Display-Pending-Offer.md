---
tc_id: TC-OFFDTL-001
title: Verify Full Offer Details Display and Enabled Actions for Pending Offer
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offer ID | `OFF-1001` |
| Parent Tender ID | `TND-501` (Status: `Open`, no accepted offer) |
| Professional Name | `Eng. Youssef Al-Harbi` |
| Professional Phone | `+966501234567` |
| Professional WhatsApp | `+966501234567` |
| Proposed Price | `165,000 SAR` |
| Execution Duration | `45 Days` |
| Proposal Description | `Full turnkey execution with dedicated site supervision and milestone warranties.` |
| Attachment | `detailed_quotation.pdf` |
| Status | `Pending` |

# Preconditions
1. Tender Owner is authenticated.
2. Parent tender `TND-501` belongs to the authenticated owner.
3. No offer has been accepted for `TND-501`.
4. Offer `OFF-1001` has status `Pending`.
5. User is on the Received Offers list (`SCR-OFF-01`).

# Steps
1. In the Received Offers list for `TND-501`, click on the offer card for `OFF-1001`.
2. Await system query and view rendering.
3. Inspect displayed professional details: Name, Phone number, and WhatsApp link.
4. Inspect commercial details: Proposed Price, Execution Duration, Description, and Attachment.
5. Verify creation timestamp and status badge (`Pending`).
6. Verify the state and availability of the "Accept Offer" action button.

# Expected Result
1. The system validates ownership of the parent tender and renders the Offer Details screen (`SCR-OFF-02`).
2. All proposal data matches the database record accurately.
3. The status badge displays `Pending`.
4. The "Accept Offer" button is prominently displayed and enabled.
5. Direct contact options (Call button, WhatsApp link) are interactive and enabled.

# Notes
- Validates Main Flow (Steps 1 to 3), FR-10, BR-10, and BR-12 in UF-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
