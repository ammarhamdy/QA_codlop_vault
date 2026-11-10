---
tc_id: TC-PUBDTL-010
title: Verify Back Navigation from Tender Details to Public Tender Catalog
priority: Low
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-710` |
| Initial Catalog Filter | City: `Jeddah`, Project Type: `Residential` |
| Return Screen | `SCR-PUB-01` (Browse Tenders Catalog) |

# Preconditions
1. User navigated to Tender Details (`TND-710`) from the public Browse Tenders catalog (`SCR-PUB-01`).
2. Catalog had specific search or filter criteria applied.

# Steps
1. On the Tender Details screen (`SCR-PUB-02`), locate the "Back" navigation control or breadcrumb link (or use browser Back button).
2. Click the "Back" button to return to the catalog.
3. Observe the rendered view and catalog state.

# Expected Result
1. The user is returned to the public Browse Tenders catalog (`SCR-PUB-01`).
2. The previous catalog state, pagination position, or active filter criteria (City: `Jeddah`, Project Type: `Residential`) are preserved where supported.
3. The catalog list remains responsive without requiring a page reload.

# Notes
- Validates Alternative Flow A2 in UF-11.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
