---
tc_id: TC-PUBDTL-001
title: Verify Comprehensive Tender Specifications Display for Active Open Tender
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-701` |
| Status | `Open` |
| Expiration Date | `2026-12-15 18:00` (Future timestamp) |
| Project Title | `Commercial Complex HVAC Installation` |
| Project Description | `Turnkey supply and installation of commercial-grade HVAC systems for a 4-story retail center.` |
| Project Type | `Commercial Construction` |
| City | `Riyadh` |
| District | `Al-Olaya` |
| Coordinates | `24.7136, 46.6753` |
| Project Area | `3,200 sq m` |
| Budget | `450,000 SAR` |
| Cover Image | `hvac_site_plan.jpg` |
| Attachments | `hvac_specifications_v1.pdf`, `boq_draft.xlsx` |

# Preconditions
1. Tender `TND-701` exists in the database with status `Open`.
2. Tender expiration date is strictly in the future (`end_date > CURRENT_TIMESTAMP`).
3. User (Professional) is browsing the application without authentication or session credentials.
4. User is on the public Browse Tenders catalog screen (`SCR-PUB-01`).

# Steps
1. In the public Browse Tenders catalog (`SCR-PUB-01`), locate and click on the card for tender `TND-701`.
2. Await system routing and data retrieval.
3. Observe the rendering of the public Tender Details screen (`SCR-PUB-02`).
4. Verify the display of header project information: Project Title, Project Type, and Cover Image.
5. Verify the display of location details: City (`Riyadh`), District (`Al-Olaya`), and Coordinates (`24.7136, 46.6753`).
6. Verify commercial and technical specifications: Project Area (`3,200 sq m`), Budget (`450,000 SAR`), Expiration Date, and Full Description.
7. Verify the presence of downloadable attachments and the prominent "Submit Offer" call-to-action button.

# Expected Result
1. The Tender Details screen (`SCR-PUB-02`) loads successfully without prompting for login or authentication credentials.
2. All project specifications, location parameters, and financial/temporal data match database records accurately.
3. Cover image and downloadable attachment cards are rendered cleanly.
4. A prominent, active "Submit Offer" button is displayed on the screen.

# Notes
- Covers Main Flow Steps 1 to 4, FR-03, BR-02, and BR-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
