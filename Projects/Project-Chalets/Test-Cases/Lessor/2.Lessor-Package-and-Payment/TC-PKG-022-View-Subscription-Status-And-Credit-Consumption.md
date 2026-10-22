---
tc_id: TC-PKG-022
title: Verify My Subscription Screen Displays Package Details, Remaining Days, and Ad Counters
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Subscribed Package | `باقة النخبة` |
| Total Package Ads | 5 |
| Published Ads Count | 3 |
| Remaining Ads Count | 2 |
| Total Featured Ads | 2 |
| Active Featured Ads | 1 |
| Remaining Featured Ads | 1 |
| Ads Counter Display Format | `«3 من 5 مستخدمة — متبقٍ 2»` |

# Preconditions
1. Lessor has an active subscription to `باقة النخبة`.
2. Lessor has published 3 chalets and highlighted 1 chalet as featured.

# Steps
1. Log in to the application in Lessor mode.
2. Navigate to "My Subscription" (`اشتراكي`).
3. Inspect all displayed data blocks.

# Expected Result
1. The screen displays:
   - Current active package name (`باقة النخبة`).
   - Subscription start date and end date.
   - Number of remaining active days.
   - Ad credit consumption indicator: `«3 من 5 مستخدمة — متبقٍ 2»`.
   - Featured ads indicator showing used vs. remaining featured credits.
2. The screen provides clear navigation actions: **Renew** (`تجديد`), **Upgrade** (`ترقية`), and **My Payments** (`مدفوعاتي`).

# Notes
- Requirement: UF-46 Main Flow Step 1.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
