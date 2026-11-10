---
tc_id: TC-MYTND-001
title: Verify Successful Retrieval and Display of Tender Owner's Created Tenders List
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field              | Value                                                                         |
| ------------------ | ----------------------------------------------------------------------------- |
| Authenticated User | Tender Owner (`owner_id: TO-1001`)                                            |
| Sample Tender 1    | Title: `Villa Construction`, Status: `Open`, City: `Riyadh`, Offers: `3`      |
| Sample Tender 2    | Title: `Office Fitout`, Status: `Closed`, City: `Jeddah`, Offers: `5`         |
| Sample Tender 3    | Title: `Warehouse Demolition`, Status: `Expired`, City: `Dammam`, Offers: `0` |
| Sample Tender 4    | Title: `Landscape Renovation`, Status: `Awarded`, City: `Khobar`, Offers: `4` |

# Preconditions
1. Tender Owner is logged in with an active session.
2. The authenticated Tender Owner has previously created tenders with various statuses (`Open`, `Closed`, `Expired`, `Awarded`).
3. Database and API services are online.

# Steps
1. Navigate to the main navigation menu or home screen.
2. Click on the "My Tenders" menu item (`SCR-TND-02`).
3. Await system query and response.
4. Inspect the displayed list of tender cards.
5. Verify the metadata shown on each card: title, project type, city, creation date, expiration date, status badge, and received offers count.

# Expected Result
1. The system successfully queries and retrieves all tenders associated with the authenticated `owner_id`.
2. All matching tenders are rendered in structured cards/rows.
3. Each tender card accurately displays:
   - Project Title
   - Project Type
   - Location (City)
   - Creation Date
   - Expiration Date
   - Status Badge (`Open`, `Closed`, `Expired`, or `Awarded`)
   - Received offers count summary
4. No error messages or broken elements are shown.

# Notes
- Validates Main Flow (Steps 1 and 2), FR-05, and BR-12 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
