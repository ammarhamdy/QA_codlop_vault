---
tc_id: TC-JOIN-033
title: Verify Admin Can Configure Fields, Documents, and Thresholds Across Scopes
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Configuration Scope | Configurable Elements | Admin Action |
| ------------------- | --------------------- | ------------ |
| Individual (`فرد`) | Add optional field: `Social Media Account` | Saved with live preview |
| Company (`منشأة`) | Reorder fields: move `Trade Name` above `CR` | Saved with live preview |
| Place (`مكان`) | Add document: `Civil Defense Safety Certificate` | Saved with live preview |
| SLA Setting | Late alert threshold: 5 business days (Sun-Thu) | Updated to 4 business days |

# Preconditions
1. Admin user is authenticated with Join Settings permissions.
2. Admin opens Admin Panel -> Join Application Settings (`إعدادات طلب الانضمام`).

# Steps
1. Select scope = **Individual**; add custom text field `Social Media Account`.
2. Tap **Preview** to verify the applicant's view.
3. Select scope = **Company**; reorder fields.
4. Select scope = **Place**; add mandatory document `Civil Defense Safety Certificate`.
5. Update late-application alert threshold from 5 to 4 business days.
6. Tap **Save Changes**.

# Expected Result
1. The admin can successfully customize fields, documents, reorder fields, and adjust SLA thresholds per scope.
2. The preview feature accurately reflects changes as applicants would see them.
3. Saved configurations take effect for all subsequent new applications and drafts.
4. Previously submitted applications retain their own archived field definitions.

# Notes
- Requirement: UF-34 Main Flow Steps 1 to 5.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
