---
tc_id: TC-NOTIF-016
title: Verify Login Authentication Codes Deliver Strictly via SMS Under 30-Second SLA
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Event | Client Login OTP Request |
| Target Mobile | `0502233445` |
| Delivery Channel | SMS only |
| Delivery SLA | Arrives within 30 seconds for $\ge$ 95% of cases |

# Preconditions
1. User enters mobile number `0502233445` on the app login screen.
2. Device push notification permissions may be active or inactive.

# Steps
1. Tap "Request Login Code" (`إرسال رمز الدخول`) on the mobile app.
2. Start stopwatch timer immediately upon submission.
3. Record the exact timestamp when SMS arrives on `0502233445`.
4. Inspect whether any push notification or in-app notification entry was generated for this OTP.

# Expected Result
1. The login code is delivered exclusively via SMS.
2. The SMS arrives within 30 seconds of request dispatch.
3. No push notification or in-app notification item is created for the login OTP (strictly SMS only).

# Notes
- Requirement: Channel Reference Table (Customer: "SMS only: Login code") & UF-26 Main Flow Step 6 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
