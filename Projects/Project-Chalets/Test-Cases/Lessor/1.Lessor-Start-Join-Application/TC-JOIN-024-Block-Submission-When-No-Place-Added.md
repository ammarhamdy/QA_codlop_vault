---
tc_id: TC-JOIN-024
title: Verify System Blocks Application Submission When Zero Places Are Added
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
| Added Places Count | `0` places |
| Expected Blocking Message | `«أضف مكانًا واحدًا على الأقل للمعاينة»` |

# Preconditions
1. User has completed all personal/corporate applicant fields.
2. User has NOT added any place for inspection.

# Steps
1. Navigate to the "Review and Submit" step.
2. Observe the places checklist item.
3. If the Submit button is clickable or via direct API call `/api/join/submit`.
4. Observe system response.

# Expected Result
1. Application submission is strictly blocked.
2. The user is presented with the explicit Arabic requirement message: `«أضف مكانًا واحدًا على الأقل للمعاينة»`.
3. The application cannot transition to `Submitted` status without at least one complete place record.

# Notes
- Requirement: UF-30 Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
