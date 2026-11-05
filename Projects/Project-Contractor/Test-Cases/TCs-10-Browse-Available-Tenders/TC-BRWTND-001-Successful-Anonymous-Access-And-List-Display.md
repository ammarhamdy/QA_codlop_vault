---
tc_id: TC-BRWTND-001
title: Verify Anonymous Professional Access and Catalog Display Without Login
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Actor Persona | Professional (Anonymous / Unauthenticated) |
| Active Tender 1 | Title: `Commercial Tower HVAC Installation`, City: `Riyadh`, District: `Al Olaya`, Budget: `450,000 SAR`, Area: `1,200 sqm` |
| Active Tender 2 | Title: `Educational Complex Construction`, City: `Jeddah`, District: `Al Andalus`, Budget: `950,000 SAR`, Area: `3,500 sqm` |

# Preconditions
1. The platform is accessible via web or mobile application.
2. The user has not registered or logged into any account (no authentication token present).
3. Active published tenders exist in the database with status `Open` and future expiration dates (`end_date > CURRENT_TIMESTAMP`).

# Steps
1. Open the application or navigate to the public "Browse Tenders" catalog route (`SCR-PUB-01`).
2. Verify that no authentication gate, login modal, or phone verification prompt is presented.
3. Await catalog loading.
4. Inspect the rendered tender cards.
5. Verify the visual elements on each card: cover image, project title, project type, city, district, project area, budget, and remaining time until expiration.

# Expected Result
1. The system acknowledges the public request and loads the catalog without prompting for login or phone verification per BR-02.
2. Active tenders meeting `status = 'Open'` and `end_date > CURRENT_TIMESTAMP` are retrieved and displayed.
3. Each tender card clearly shows:
   - Cover Image (or default project placeholder)
   - Project Title
   - Project Type
   - Location (City, District)
   - Project Area
   - Budget
   - Remaining time until expiration
4. The professional can browse freely without authentication.

# Notes
- Validates Main Flow (Steps 1 to 3), FR-02, BR-02, and BR-04 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
