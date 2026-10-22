---
tc_id: TC-JOIN-035
title: Verify System Records Comprehensive Audit Logs on Join Settings Modifications
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Admin User | `admin_sarah` |
| Modified Setting | Tourism Permit Enabled (`is_enabled: true`, `shown_publicly: true`) |
| Action Type | `SETTINGS_UPDATE` |

# Preconditions
1. Admin user `admin_sarah` is authenticated.
2. Join application settings are open.

# Steps
1. Toggle the Tourism Permit field to enabled.
2. Set "Shown Publicly" to enabled and "Publishing Condition" to enabled.
3. Save changes.
4. Navigate to Admin Panel -> Audit Logs (`سجل العمليات والرقابة`).
5. Filter logs by action category `Join Application Settings`.
6. Inspect the details of the latest logged event.

# Expected Result
1. The system creates an immutable audit trail entry capturing:
   - Admin user identifier (`admin_sarah`).
   - Exact timestamp of the change.
   - Previous state vs. new state (diff).
   - Changed settings parameters (Tourism Permit enabled).
2. All modifications to onboarding fields, documents, and SLA settings are fully auditable.

# Notes
- Requirement: UF-34 Notes (Closed question: "Is every settings change audit-logged? YES").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
