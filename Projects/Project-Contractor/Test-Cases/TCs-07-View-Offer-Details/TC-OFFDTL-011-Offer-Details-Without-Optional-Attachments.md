---
tc_id: TC-OFFDTL-011
title: Verify Clean Rendering and UI Handling for Offer Submitted Without Attachments
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offer ID | `OFF-1011` |
| Parent Tender ID | `TND-501` |
| Professional Name | `Sultan Al-Otaibi` |
| Professional Phone | `+966551122334` |
| Proposed Price | `75,000 SAR` |
| Execution Duration | `20 Days` |
| Description | `Supply and installation of specialized HVAC units according to specifications.` |
| Attachments | None (`[]` / null) |
| Status | `Pending` |

# Preconditions
1. Tender Owner is authenticated.
2. Parent tender `TND-501` belongs to the authenticated Tender Owner.
3. Offer `OFF-1011` was submitted without any optional attachments.
4. User is on the Received Offers list (`SCR-OFF-01`).

# Steps
1. In the Received Offers list, click on the offer card for `OFF-1011`.
2. Observe the loading and rendering of the Offer Details page (`SCR-OFF-02`).
3. Locate the Attachments section/widget on the screen.
4. Verify UI presentation when no attachments are present.
5. Check browser developer console for any script or missing asset rendering errors.

# Expected Result
1. The Offer Details page renders completely without errors.
2. The Attachments section gracefully displays an empty-state indicator (e.g., "No attachments uploaded" or section is omitted cleanly).
3. No broken image/file placeholders, empty link boxes, or `null`/`undefined` text tokens are visible.
4. All other offer details (price, duration, description, contact details) display properly.

# Notes
- Ensures robust UI rendering and null handling for optional attachment fields per FR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:25*
