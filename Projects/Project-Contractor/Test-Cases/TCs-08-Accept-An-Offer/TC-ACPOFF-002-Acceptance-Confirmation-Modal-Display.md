---
tc_id: TC-ACPOFF-002
title: Verify Confirmation Modal Presentation and Warning Message Before Offer Acceptance
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
run_result: pass
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Offer ID | `OFF-102` |
| Expected Modal Heading | `"Accept Offer"` |
| Expected Warning Text | `"Accept this offer? You can only accept one offer per tender. This action cannot be undone."` |
| Action Buttons | `"Confirm Acceptance"` (primary/action), `"Cancel"` (secondary/dismiss) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Offer Details screen for a valid pending offer (`OFF-102`).
3. No offer has been accepted on the parent tender.

# Steps
1. Navigate to the Offer Details screen for `OFF-102`.
2. Locate and click the "Accept Offer" button.
3. Inspect the modal dialogue (`SCR-OFF-03`) that overlays the screen.
4. Verify the explicit warning message text and button labels.

# Expected Result
1. The application triggers the confirmation modal instead of immediately mutating data.
2. The exact warning is displayed: `"Accept this offer? You can only accept one offer per tender. This action cannot be undone."`.
3. Two distinct actions are presented: "Confirm Acceptance" and "Cancel".
4. Background page interactions are disabled while the modal is open.

# Notes
- Directly validates Main Flow Step 1 in UF-08 and SCR-OFF-03.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
