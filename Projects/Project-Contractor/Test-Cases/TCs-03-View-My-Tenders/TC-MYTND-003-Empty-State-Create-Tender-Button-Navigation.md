---
tc_id: TC-MYTND-003
title: Verify Navigation to Create Tender Form via Empty State Action Button
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Source Screen | "My Tenders" Empty State View |
| Interactive Element | "Create Tender" CTA button |
| Destination Screen | Create Tender Form (`SCR-TND-01`, UF-02) |

# Preconditions
1. Tender Owner is authenticated.
2. User is viewing the empty state on the "My Tenders" screen.
3. "Create Tender" button is visible and active.

# Steps
1. Navigate to the empty state view of "My Tenders".
2. Click on the prominent "Create Tender" button.
3. Observe URL route transition and rendered screen.

# Expected Result
1. The application triggers navigation to the Create Tender flow (`UF-02`).
2. The Create Tender form (`SCR-TND-01`) opens cleanly with all input fields ready for data entry.
3. The user session remains valid throughout navigation.

# Notes
- Validates workflow integration between UF-03 (Alternative A1) and UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
