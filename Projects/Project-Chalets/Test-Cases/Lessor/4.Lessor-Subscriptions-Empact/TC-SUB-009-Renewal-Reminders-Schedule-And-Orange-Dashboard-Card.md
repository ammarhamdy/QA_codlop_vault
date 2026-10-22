---
tc_id: TC-SUB-009
title: Verify Renewal Reminders Schedule and Orange Dashboard Card Indicator
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Milestone Before End | Channel | Expected Action / Styling |
| -------------------- | ------- | ------------------------- |
| 7 Days Remaining | Push + In-App | Reminder notification with "Renew Now" + Dashboard card turns orange |
| 3 Days Remaining | Push + In-App | Reminder notification with "Renew Now" + Orange card maintained |
| 1 Day Remaining | Push + In-App | Urgent reminder notification with "Renew Now" + Orange card maintained |

# Preconditions
1. Lessor has an active subscription ending in 8 days.
2. No renewal subscription is in `Awaiting Start` status.

# Steps
1. Advance clock to 7 days before subscription end date.
2. Verify delivery of the 7-day push notification and check dashboard card color.
3. Advance clock to 3 days before end date and check notification delivery.
4. Advance clock to 1 day before end date and check notification delivery.
5. In the lessor dashboard, verify the card banner styling.

# Expected Result
1. Push and in-app reminders with a **"Renew Now"** (`جدّد الآن`) action are delivered at 7, 3, and 1 days before expiration.
2. The dashboard card turns visually orange when 7 days or less remain.
3. The orange threshold is fixed and alerts the lessor of impending service disruption.

# Notes
- Requirement: UF-59 Main Flow Step 1 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
