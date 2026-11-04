---
tc_id: TC-OFFDTL-012
title: Verify Data Integrity and Formatting of Price, Duration, and Creation Timestamp
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
---

# Test Data
| Field | Database Value | Expected Formatted UI Display |
| ----- | -------------- | ----------------------------- |
| Offer ID | `OFF-1012` | `OFF-1012` |
| Parent Tender ID | `TND-501` | `TND-501` |
| Proposed Price | `1250500.50` | `1,250,500.50 SAR` (or standard locale format) |
| Execution Duration | `180` | `180 Days` |
| Creation Timestamp | `2026-11-04T09:30:00Z` | Formatted localized datetime (e.g., `04/11/2026, 12:30 PM AST`) |
| Status | `Pending` | `Pending` badge |

# Preconditions
1. Tender Owner is authenticated.
2. Parent tender `TND-501` belongs to the authenticated Tender Owner.
3. Offer `OFF-1012` exists with verified database records matching the test data.
4. User is on the Received Offers list (`SCR-OFF-01`).

# Steps
1. Navigate to the Received Offers list for `TND-501`.
2. Click on the offer card for `OFF-1012` to open `SCR-OFF-02`.
3. Verify the rendering of the Proposed Price against the raw database value.
4. Verify the rendering of the Execution Duration including proper unit suffix.
5. Verify that the Creation Timestamp displays the localized date and time without rounding errors or timezone skew.
6. Verify that no raw database field identifiers or formatting escape characters leak into the UI.

# Expected Result
1. The Offer Details page displays all numerical and temporal data accurately.
2. The proposed price correctly includes thousand separators and the `SAR` currency suffix without loss of decimal precision.
3. The execution duration displays the exact number with duration unit (`Days`).
4. The creation timestamp displays in the expected human-readable localized format.

# Notes
- Validates data presentation and formatting rules per FR-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:25*
