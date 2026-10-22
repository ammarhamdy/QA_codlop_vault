---
tc_id: TC-RENT-001
title: Verify Setting Default Full Day Times and Working Days on New Chalet
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Default Value | Configured Value |
| ----- | ------------- | ---------------- |
| Rental System Type | Full Day (`يوم كامل`) | Fixed to Full Day |
| Check-in Time | `04:00 PM` | `04:00 PM` |
| Check-out Time | `12:00 PM` (Next day) | `12:00 PM` (Next day) |
| Working Days | All 7 days (Sunday to Saturday) | All 7 days |

# Preconditions
1. Lessor is accepted and is creating a new chalet ad (Step 5 of ad editor UF-50).
2. Admin default times are configured as 4:00 PM check-in and 12:00 PM check-out next day.

# Steps
1. Navigate to Step 5 ("Times and Working Days") in the chalet ad editor.
2. Observe the default check-in and check-out times populated on the screen.
3. Observe the working days selection checkboxes.
4. Keep the default times and all 7 days selected.
5. Tap **Save and Continue** (`حفظ ومتابعة`).

# Expected Result
1. The form initializes with the platform default times: check-in at 4:00 PM, and check-out on the next day at 12:00 PM.
2. All 7 days of the week are selected by default as active working days.
3. Tapping save persists the times and working days configuration into the ad draft.

# Notes
- Requirement: UF-64 Main Flow Steps 1 to 3 & Alternative Flow A1.
- A full day for date D strictly spans from check-in on date D to check-out on date D+1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
