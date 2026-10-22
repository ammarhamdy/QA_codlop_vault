---
tc_id: TC-JOIN-032
title: Verify Applicant Can Apply Again Immediately Reusing Previous Application Data
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
| Rejected Application | `APP-2026-000505` (Rejected 5 minutes ago) |
| Reapply Action | **"Apply Again"** (`التقديم مرة أخرى`) |
| Pre-populated Fields | National ID, Full Name, City, Address, previously uploaded documents |

# Preconditions
1. User's previous application was rejected.
2. User's credentials are NOT permanently banned.

# Steps
1. On the rejection decision screen, tap **"Apply Again"** (`التقديم مرة أخرى`).
2. Observe whether a waiting period / cooldown timer is enforced.
3. Inspect the newly initialized application form fields and uploaded documents.
4. Correct the deficiency noted in the previous rejection.
5. Submit the new application.

# Expected Result
1. The applicant is allowed to apply again immediately with zero waiting period or cooldown penalty.
2. The system pre-fills the new draft reusing valid data and documents submitted in the previous application.
3. The user can adjust fields, resolve reviewer concerns, and submit a new application (`APP-2026-000506`).

# Notes
- Requirement: UF-33 Alternative Flow A2 & Notes (Closed question: "Does a new application after rejection reuse the previous data? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
