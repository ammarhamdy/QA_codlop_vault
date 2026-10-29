---
tc_id: TC-HOME-012
title: Verify Home Screen Displays Specific Empty State When No Published Ads Exist
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Total Published Ads in Platform | `0` (Fresh launch or zero published chalets) |
| Expected Message | `نجهز لك أماكن مميزة قريبًا` |
| Expected Action / Call-to-Action | `تواصل معنا إن كنت مؤجّرًا` |

# Preconditions
1. Platform database has zero published chalet ads (no active listings in any city).
2. User opens the mobile application on the Home screen.

# Steps
1. Launch the mobile application.
2. Navigate to the Home screen.
3. Observe the main content area where listings/featured places normally appear.
4. Verify the exact text of the empty state message.
5. Verify the presence and interactability of the lessor contact call-to-action link/button.
6. Tap on "تواصل معنا إن كنت مؤجّرًا".

# Expected Result
1. The Home screen displays the designated empty state message: `نجهز لك أماكن مميزة قريبًا`.
2. Alongside the message, the call-to-action button or text link `تواصل معنا إن كنت مؤجّرًا` is clearly presented.
3. Tapping the link redirects the user to the lessor onboarding, contact, or support channel (e.g. WhatsApp / support contact per Section 47).
4. No broken list views or unhandled error messages appear.

# Notes
- Requirement: `لا إعلانات منشورة بعد: «نجهز لك أماكن مميزة قريبًا» + «تواصل معنا إن كنت مؤجّرًا»`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
