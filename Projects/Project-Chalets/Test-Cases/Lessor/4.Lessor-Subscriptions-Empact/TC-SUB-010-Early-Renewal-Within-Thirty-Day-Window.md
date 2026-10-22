---
tc_id: TC-SUB-010
title: Verify Early Renewal Within Thirty-Day Window Creates Subscription Awaiting Start
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Current Subscription | Early Renewal Subscription |
| ----- | -------------------- | -------------------------- |
| Subscription End Date | `2026-11-10 23:59:59` | - |
| Early Renewal Submission Date | `2026-10-21` (20 days remaining, within 30-day window) | - |
| Package Duration | 30 days | 30 days |
| Expected Start Date | - | `2026-11-11 00:00:00` |
| Expected End Date | - | `2026-12-10 23:59:59` |

# Preconditions
1. Lessor is 20 days away from subscription expiration (inside the 30-day early renewal window).
2. No other payment request is pending.

# Steps
1. Tap **"Renew Now"** from dashboard card or "My Subscription".
2. Select package and payment method; complete payment.
3. As Finance admin, approve the payment request.
4. In database and lessor app, inspect the newly generated subscription record.

# Expected Result
1. The renewal request is permitted because the current date is within the 30-day window.
2. Upon approval, the new subscription is created with status `Awaiting Start` (`بانتظار البدء`).
3. Its start date is scheduled precisely at `00:00:00` on the day after the current subscription ends (`2026-11-11 00:00:00`).
4. While this renewal is `Awaiting Start`, future expiry reminders (7, 3, 1 day) are suppressed.

# Notes
- Requirement: UF-59 Main Flow Steps 2 to 5 & 7.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
