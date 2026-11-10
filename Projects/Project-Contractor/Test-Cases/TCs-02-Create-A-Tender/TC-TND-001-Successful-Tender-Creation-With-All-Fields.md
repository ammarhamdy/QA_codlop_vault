---
tc_id: TC-TND-001
title: Verify Successful Tender Creation and Immediate Publication with All Fields
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
| Field                        | Value                                                                                                    |
| ---------------------------- | -------------------------------------------------------------------------------------------------------- |
| Title                        | `Residential Villa Construction`                                                                         |
| Description                  | `Full turnkey construction of a two-story residential villa according to attached engineering drawings.` |
| Project Type                 | `Construction`                                                                                           |
| City                         | `Riyadh`                                                                                                 |
| District                     | `Al Narjis`                                                                                              |
| Latitude                     | `24.8322`                                                                                                |
| Longitude                    | `46.6738`                                                                                                |
| Project Area                 | `450 sqm`                                                                                                |
| Budget                       | `850000`                                                                                                 |
| Expiration Date (`end_date`) | Valid future date (e.g., `+30 days` from today)                                                          |
| Tender Image                 | `villa_render.jpg` (valid image under size limit)                                                        |
| Attachments                  | `structural_specs.pdf` (valid document)                                                                  |

# Preconditions
1. Tender Owner is logged in with an active authentication session.
2. User is on the Tender Owner navigation / dashboard view ("My Tenders").
3. File storage and database services are operational.

# Steps
1. Click the "Create Tender" button on the Tender Owner navigation / dashboard.
2. Verify that the Tender Creation form (`SCR-TND-01`) opens with all input fields.
3. Enter `Residential Villa Construction` in the Title field.
4. Enter the detailed description in the Description field.
5. Select `Construction` from the Project Type selector.
6. Enter location details: City (`Riyadh`), District (`Al Narjis`), Latitude (`24.8322`), and Longitude (`46.6738`).
7. Enter `450 sqm` in the Project Area field and `850000` in the Budget field.
8. Select an Expiration Date (`end_date`) set to 30 days in the future.
9. Upload a cover image (`villa_render.jpg`) and a document attachment (`structural_specs.pdf`).
10. Click the "Publish Tender" button.
11. Await system processing.

# Expected Result
1. The tender record is created in the database and linked to the authenticated `owner_id`.
2. Initial status is assigned as `Open`.
3. Creation timestamp (`created_at`) is set.
4. The tender is immediately published and accessible in the public tender catalog for professionals.
5. The new tender appears in the Tender Owner's "My Tenders" list.
6. A success notification is displayed with an actionable link to view the created tender.

# Notes
- Validates UF-02 Main Flow (Steps 1 to 5), FR-04, BR-03, and FR-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
