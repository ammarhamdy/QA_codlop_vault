---
tc_id: TC-TND-002
title: Verify Successful Tender Creation and Publication with Mandatory Fields Only
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
| Field                        | Value                                                                  |
| ---------------------------- | ---------------------------------------------------------------------- |
| Title                        | `Commercial Office Interior Fit-out`                                   |
| Description                  | `Interior finishing and electrical wiring for a commercial workspace.` |
| Project Type                 | `Renovation`                                                           |
| City                         | `Jeddah`                                                               |
| District                     | `Al Rawdah`                                                            |
| Latitude                     | `21.5721`                                                              |
| Longitude                    | `39.1628`                                                              |
| Project Area                 | `200 sqm`                                                              |
| Budget                       | `120000`                                                               |
| Expiration Date (`end_date`) | Valid future date (e.g., `+14 days` from today)                        |
| Tender Image                 | `image.png`                                                            |
| Attachments                  | `[Empty]`                                                              |

# Preconditions
1. Tender Owner is authenticated with valid credentials.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Fill in all required project fields: Title, Description, Project Type, City, District, Latitude, Longitude, Project Area, Budget, and future Expiration Date.
2. Leave optional cover image and document attachments fields unpopulated.
3. Click the "Publish Tender" button.
4. Await system processing.

# Expected Result
1. The system confirms all mandatory fields are valid.
2. System does not require optional image or attachment uploads to complete submission.
3. The tender is saved with status `Open` and associated with the current `owner_id`.
4. The tender is published immediately to the public catalog.
5. Success notification is displayed with a link to view the tender.

# Notes
- Confirms that optional media uploads (tender image, attachments) are not mandatory for successful tender creation per UF-02 Main Flow (Step 1 and Step 3).

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
