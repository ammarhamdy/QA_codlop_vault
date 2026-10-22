---
tc_id: TC-JOIN-027
title: Verify Applicant Receives Push and In-App Notifications on Status Transitions
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Triggering Transition | Notification Channels | Expected Message Tone |
| --------------------- | --------------------- | --------------------- |
| Moved to Under Review | Push + In-App | Onboarding progress notice |
| Moved to Inspection Scheduled | Push + In-App | Inspection scheduled alert |
| Moved to Needs Completion | Push + In-App | Action required: corrections notice |
| Final Acceptance / Rejection | Push + In-App | Final onboarding decision notice |

# Preconditions
1. Applicant has an active submitted join application.
2. Device push notifications are enabled.

# Steps
1. As reviewer, transition application from `Submitted` to `Under Review`.
2. Check applicant's device push notification shade and in-app notification center.
3. Advance to `Inspection Scheduled` -> Check notifications.
4. Issue corrections (`Needs Completion`) -> Check notifications.
5. Issue final decision (`Accepted` or `Rejected`) -> Check notifications.

# Expected Result
1. The applicant reliably receives both Push and In-App notifications at every status milestone transition.
2. Tapping any notification deep-links directly to the application tracking screen.
3. Every notification record is permanently archived in the in-app notification center.

# Notes
- Requirement: UF-31 Notes (Closed question: "Is the applicant notified at each status change? YES").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
