---
tc_id: TC-TNDEDT-002
title: Verify Edit Tender Form Pre-Populates All Existing Tender Fields Accurately
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Expected Pre-Populated Value |
| ----- | ---------------------------- |
| Title | `Luxury Residential Villa` |
| Description | `Turnkey villa construction with boundary walls.` |
| Project Type | `Construction` |
| City | `Riyadh` |
| District | `Al Malqa` |
| Coordinates | `24.7925, 46.6189` |
| Project Area | `550 sqm` |
| Budget | `1100000` |
| Expiration Date | `2026-12-15` |
| Cover Image | `villa_front.jpg` preview |
| Attachments | `structural_plan.pdf` badge |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-202` exists in the database owned by the user, containing the above data.
3. User is on the Tender Details screen for `TND-202`.

# Steps
1. On the Tender Details screen, click the "Edit Tender" button.
2. Await form loading and inspect the rendered input fields.
3. Compare each pre-populated form input with the original tender record.

# Expected Result
1. The Edit Tender form (`SCR-TND-04`) loads completely.
2. Every field is accurately pre-populated with existing data:
   - Title, Description, and Project Type match exactly.
   - Location fields (City, District, Latitude, Longitude) match exactly.
   - Project Area and Budget display existing numerical values.
   - Expiration date selector reflects the saved `end_date`.
   - Existing cover image preview and attachment file badges are loaded.
3. No field is reset to blank or default state inadvertently.

# Notes
- Validates Main Flow Step 2 and FR-07 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
