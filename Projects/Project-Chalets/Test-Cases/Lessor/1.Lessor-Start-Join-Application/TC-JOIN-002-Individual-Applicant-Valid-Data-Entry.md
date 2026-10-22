---
tc_id: TC-JOIN-002
title: Verify Individual Applicant Enters Valid Saudi National ID and Personal Data
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
| National ID | `1012345678` (10 digits, starts with 1, valid checksum) |
| Full Name | `عبدالرحمن بن عبدالعزيز الفهد` |
| Activity Name (Optional) | `شاليهات النسيم` |
| ID Document Photo | `national_id_front.jpg` (Valid image, 2.5 MB) |

# Preconditions
1. User taps "Join as Lessor" and selects **Individual** (`فرد`).
2. User is on the Individual Applicant Data form.

# Steps
1. Enter National ID `1012345678`.
2. Enter Full Name `عبدالرحمن بن عبدالعزيز الفهد`.
3. Enter optional Activity Name `شاليهات النسيم`.
4. Upload National ID photo file `national_id_front.jpg`.
5. Tap **Next** or observe auto-save indicator.

# Expected Result
1. The 10-digit Saudi National ID starting with 1 passes format and checksum algorithm validation.
2. The ID document image is uploaded and stored securely.
3. The applicant's draft data is automatically saved.
4. The system navigates smoothly to the next step (UF-29: Add Place).

# Notes
- Requirement: UF-28 Main Flow Steps 3, 5, 6.
- Individual lessor registration is strictly reserved for Saudi citizens.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
