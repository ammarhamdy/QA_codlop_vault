---
tc_id: TC-TNDDTL-001
title: Verify Full Tender Details Display and Contextual Actions for Open Tender
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field                        | Value                                                        |
| ---------------------------- | ------------------------------------------------------------ |
| Tender ID                    | `TND-101`                                                    |
| Title                        | `Luxury Villa Construction`                                  |
| Description                  | `Turnkey construction of a private 3-story villa in Riyadh.` |
| Project Type                 | `Construction`                                               |
| City                         | `Riyadh`                                                     |
| District                     | `Al Malqa`                                                   |
| Coordinates                  | `24.7925, 46.6189`                                           |
| Project Area                 | `600 sqm`                                                    |
| Budget                       | `1200000 SAR`                                                |
| Expiration Date (`end_date`) | `2026-12-31` (future date)                                   |
| Cover Image                  | `villa_facade.jpg`                                           |
| Attachments                  | `engineering_plans.pdf`                                      |
| Status                       | `Open`                                                       |
| Received Offers Count        | `3`                                                          |


# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-101` was created by the authenticated owner (`owner_id` matches).
3. Tender status is `Open`.
4. User is on the "My Tenders" list (`SCR-TND-02`).

# Steps
1. In the "My Tenders" list, click on the tender card for `Luxury Villa Construction` (`TND-101`).
2. Await system query and view rendering.
3. Inspect all displayed project information: Title, Description, Project Type, Location (City, District, Coordinates), Project Area, Budget, and Expiration Date.
4. Verify display of media assets: cover image preview and downloadable attachment link.
5. Verify current status badge displays `Open`.
6. Inspect the available action buttons at the bottom/header of the details view.

# Expected Result
1. The system validates ownership and renders the comprehensive Tender Details view (`SCR-TND-03`).
2. All project details match the database record accurately.
3. The cover image and attachment file names are rendered properly.
4. The received offers count indicates `3 Offers`.
5. Because the status is `Open`, all contextual management controls are available:
   - "View Offers" button is enabled (showing count `3`).
   - "Edit Tender" button is enabled.
   - "Close Tender" button is enabled.

# Notes
- Validates Main Flow (Steps 1 to 3), FR-06, BR-05, BR-06, and BR-10 in UF-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
