---
tc_id: TC-ACPT-039
title: Admin Pre-Check-in Reminder Hours Configuration and Validation
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Default Value | Modified Value |
| ----- | ------------- | -------------- |
| Pre-Check-in Reminder Hours | `24` hours | `48` hours |

# Preconditions
1. Admin user has settings management permissions.
2. Admin opens Booking Reception Settings.

# Steps
1. Navigate to the **Reminder Hours Before Check-in** field.
2. Verify default value is 24 hours.
3. Update the value to 48 hours.
4. Tap **"Save"**.
5. Check backend configuration storage.

# Expected Result
1. The reminder hours setting is validated and saved successfully.
2. Pre-check-in notifications for future confirmed bookings schedule their dispatch triggers 48 hours prior to check-in time.

# Notes
- Requirement: UF-85 (Main Flow Step 4).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
