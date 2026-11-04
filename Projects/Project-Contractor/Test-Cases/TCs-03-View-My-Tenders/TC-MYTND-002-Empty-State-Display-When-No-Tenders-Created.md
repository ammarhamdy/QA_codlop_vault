---
tc_id: TC-MYTND-002
title: Verify Empty State Display and Actionable Prompt When Owner Has No Tenders
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-03-View-My-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated User | Tender Owner (`owner_id: TO-2002` with 0 created tenders) |
| Expected Message | `"You have not created any tenders yet."` |
| Expected CTA Button | `"Create Tender"` |

# Preconditions
1. Tender Owner is authenticated with a valid session.
2. The user has never created any tenders, or all previous drafts/entries are empty (tenders count = 0).

# Steps
1. Select "My Tenders" from the main navigation menu or home screen.
2. Observe the screen loading state and rendered container.
3. Verify the presence and wording of the empty state notification.
4. Verify the presence of the call-to-action (CTA) button.

# Expected Result
1. The system confirms zero records associated with `owner_id`.
2. The empty state view is presented with the explicit message: `"You have not created any tenders yet."`.
3. A prominent "Create Tender" button is clearly visible.
4. No empty card placeholders or unhandled error messages are displayed.

# Notes
- Directly validates alternative flow A1 in UF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:05*
