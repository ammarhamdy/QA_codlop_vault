---
tc_id: TC-PUBDTL-008
title: Verify Clean Rendering When Optional Media and Attachments Are Omitted
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-708` |
| Status | `Open` |
| Title | `Residential Electrical Wiring Maintenance` |
| Cover Image | None (`null`) |
| Attachments | None (`[]` / empty) |

# Preconditions
1. Tender `TND-708` exists with status `Open`.
2. Tender was created without an optional cover image and without file attachments.
3. User is unauthenticated (Professional).

# Steps
1. Navigate to the Tender Details screen for `TND-708`.
2. Observe the page layout and media container elements.
3. Inspect the cover image area: verify if a default placeholder image or clean styled fallback is shown without broken image icons.
4. Inspect the attachments section: verify if it is gracefully hidden or displays a clean empty state (e.g., "No attachments available").
5. Verify that all mandatory text specifications (title, description, area, budget, location, deadline) and the "Submit Offer" button render properly.

# Expected Result
1. The Tender Details page loads and renders completely without layout distortion.
2. No broken image link icons, 404 image errors, or empty attachment download containers appear.
3. Default visual styling handles absent media gracefully.
4. The "Submit Offer" button remains prominent and fully operational.

# Notes
- Ensures UI robustness and graceful fallback rendering for optional media per FR-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
