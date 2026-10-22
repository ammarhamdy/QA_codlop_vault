---
tc_id: TC-PKG-025
title: Verify Upgrading Subscription Forfeits Remaining Days and Unused Credits
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value Before Upgrade | Value After Upgrade |
| ----- | -------------------- | ------------------- |
| Package Name | `باقة البداية` | `باقة النخبة` |
| Unused Ad Credits | 2 credits | Forfeited / Replaced by new package credits (10 ads) |
| Remaining Days | 15 days | Forfeited / Replaced by new duration (90 days) |

# Preconditions
1. Lessor is subscribed to `باقة البداية` with 15 remaining days and 2 unused ad credits.
2. Lessor initiates an Upgrade to `باقة النخبة` (10 ads, 90 days).

# Steps
1. In "My Subscription", tap **Upgrade** (`ترقية`).
2. Select `باقة النخبة` and complete payment.
3. Finance approves the upgrade payment request.
4. Open "My Subscription" as the lessor.
5. Review the new package name, expiration date, and available ad credits balance.

# Expected Result
1. The new package `باقة النخبة` becomes active immediately.
2. The remaining 15 days and 2 unused ad credits from the previous package are expired/forfeited.
3. The lessor's available credits reset entirely to the quota of the new upgraded package (10 ads).
4. No credit rollover or partial refund is applied.

# Notes
- Requirement: UF-46 Notes (Closed question: "On upgrade, what happens to the remaining days and unused credits? Expired").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
