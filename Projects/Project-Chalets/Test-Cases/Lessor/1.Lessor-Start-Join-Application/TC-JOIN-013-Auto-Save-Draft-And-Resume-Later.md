---
tc_id: TC-JOIN-013
title: Verify Application Auto-Saves as Draft and Allows Seamless Resumption
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scope | Individual |
| Applicant Name | `سلطان بن إبراهيم المنصور` |
| Uploaded Photo | `id_card.png` |
| Interruption Point | User closes app during Place creation step |

# Preconditions
1. User starts a new join application and fills in applicant information.
2. Form is at the "Add Place" step.

# Steps
1. Enter applicant data and upload ID photo.
2. Close or terminate the application without clicking any submit button.
3. Relaunch the application.
4. Navigate to "My Account" -> "Join as Lessor" (or "Continue Application").
5. Inspect all previously entered fields and attached documents.

# Expected Result
1. Every completed step is automatically persisted in draft state.
2. Relaunching the application detects the existing draft and resumes from the exact last visited step.
3. All previously entered text fields and uploaded attachments remain intact with zero data loss.

# Notes
- Requirement: UF-28 Main Flow Step 6 & Alternative Flow A2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
