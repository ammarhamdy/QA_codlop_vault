---
tc_id: TC-ACPT-041
title: Admin Booking Reception Settings - Mandatory Audit Logging for All Setting Modifications
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Actor | Admin User (`admin_ops_01`) |
| Action | Update Confirmation Window from 24h to 36h |
| Expected Audit Event | `BOOKING_RECEPTION_SETTINGS_UPDATE` |

# Preconditions
1. Admin user is authenticated.
2. Tester has access to platform audit logs.

# Steps
1. In the admin panel, modify any booking reception setting (e.g., change confirmation window from 24 to 36 hours).
2. Tap **"Save"**.
3. Inspect the administrative audit log repository.

# Expected Result
1. Every change to booking reception settings is strictly and immutably audit-logged.
2. The audit entry includes:
   - Admin actor ID.
   - Timestamp of change.
   - Field modified.
   - Previous value (24) and new value (36).

# Notes
- Requirement: UF-85 (Notes - closed questions: "Is every settings change audit-logged? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
