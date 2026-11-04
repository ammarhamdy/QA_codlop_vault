---
tc_id: TC-PUBDTL-011
title: Verify Location and Geographic Coordinates Display Accuracy
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-711` |
| City | `Dammam` |
| District | `Al-Faisaliyah` |
| Coordinates | `26.4207, 50.0888` |
| Project Area | `1,500 sq m` |
| Budget | `280,000 SAR` |

# Preconditions
1. Tender `TND-711` is active (`Open`) with verified geographic coordinates and district data.
2. User is on the Tender Details screen (`SCR-PUB-02`).

# Steps
1. Navigate to the Tender Details screen for `TND-711`.
2. Inspect the location information block:
   - Verify City is displayed as `Dammam`.
   - Verify District is displayed as `Al-Faisaliyah`.
   - Verify Latitude and Longitude coordinates display `26.4207, 50.0888`.
3. If an interactive map pin or external map link is integrated, click/tap the coordinates or map preview.
4. Verify that the location opens correctly with matching coordinates.

# Expected Result
1. City, district, and exact coordinates are clearly presented to the professional.
2. Formatted location text matches database values with high precision.
3. Interactive map links correctly target the designated latitude and longitude (`26.4207, 50.0888`).

# Notes
- Validates FR-03 and BR-04 requirement for accurate location and specification presentation.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
