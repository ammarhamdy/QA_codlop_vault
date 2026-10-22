---
tc_id: TC-JOIN-016
title: Verify Adding a Place with Valid Details and Chalet Fixed Property Type
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value | Validation Rules |
| ----- | ----- | ---------------- |
| Chalet Name | `شاليه الريان الفاخر` | 3 to 80 characters (19 chars) |
| City | `الرياض` | Valid Saudi city |
| District | `الملقا` | District belonging to selected city |
| Detailed Address | `شارع الأمير محمد بن سلمان، مخرج 4` | 5 to 200 characters (34 chars) |
| Property Type | `Chalet` (`شاليه`) | Fixed and hidden if single type, selectable if multiple |

# Preconditions
1. User has completed applicant data (UF-28) and navigated to the "Add Place" step.
2. Only one property type (`Chalet`) is configured in the platform.

# Steps
1. Tap **"Add Place"** (`إضافة مكان`).
2. Observe the Property Type field visibility and behavior.
3. Enter Chalet Name `شاليه الريان الفاخر`.
4. Select City `الرياض` and District `الملقا`.
5. Enter Detailed Address.
6. Verify form field validation responses.

# Expected Result
1. Because only one property type exists, the type field is fixed to "Chalet" and hidden from the form.
2. Name, city, district, and address are validated and accepted.
3. District options are dynamically filtered to match the selected City.

# Notes
- Requirement: UF-29 Main Flow Steps 1 to 2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
