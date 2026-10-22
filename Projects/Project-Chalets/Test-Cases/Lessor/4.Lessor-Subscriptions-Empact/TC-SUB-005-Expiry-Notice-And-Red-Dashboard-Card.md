---
tc_id: TC-SUB-005
title: Verify System Dispatches Expiry Notice and Turns Dashboard Card Red
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Notification Channel | Push + In-App (Lessor) |
| Dashboard Banner State | Urgent / Red Card Styling |
| Banner Text | `«إعلاناتك مخفية — جدّد الآن»` |
| Primary Action Button | **"Renew Now"** (`جدّد الآن`) |

# Preconditions
1. Lessor's subscription expires with no active renewal awaiting start.
2. Lessor has push notifications enabled on their device.

# Steps
1. Advance clock past expiry cutoff (`23:59:59`).
2. Check push notifications on the lessor's mobile device.
3. Open the lessor dashboard in the mobile application.
4. Observe the primary status banner / card at the top of the dashboard.
5. Tap the **"Renew Now"** action button on the red banner.

# Expected Result
1. The system sends an expiration notification to the lessor.
2. The dashboard card turns visually prominent red with the exact Arabic text: `«إعلاناتك مخفية — جدّد الآن»`.
3. Tapping "Renew Now" navigates directly to the renewal package selection flow (UF-59).

# Notes
- Requirement: UF-57 Main Flow Steps 5 & 7.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
