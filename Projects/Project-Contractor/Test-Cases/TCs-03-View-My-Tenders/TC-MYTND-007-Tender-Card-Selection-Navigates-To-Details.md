---
tc_id: TC-MYTND-007
title: Verify Interactive Navigation from Tender Card to Tender Details View
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
| Field | Value |
| ----- | ----- |
| Target Tender | Title: `Commercial Plaza Construction`, ID: `TND-501` |
| Destination Flow | Tender Details View (`UF-04`, `SCR-TND-03`) |

# Preconditions
1. Tender Owner is authenticated.
2. The user has at least one tender rendered in the "My Tenders" list.

# Steps
1. Navigate to the "My Tenders" list screen.
2. Locate the tender card for `Commercial Plaza Construction` (`TND-501`).
3. Click on the tender card or its title/action area.
4. Observe the navigation transition and destination page.

# Expected Result
1. The click event successfully initiates navigation to the corresponding Tender Details flow (`UF-04`).
2. The system loads the detailed view for `TND-501`, showing all comprehensive tender fields, attachments, and offer management options.
3. The URL reflects the target tender identifier.

# Notes
- Directly validates Main Flow Step 3 in UF-03 and integration with UF-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
