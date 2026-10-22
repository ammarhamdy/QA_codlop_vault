---
tc_id: TC-PKG-001
title: Verify Active Packages Display with Price, Duration, Ads Count, and Featured Ads
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
| Package 1 Name | `باقة البداية` |
| Package 1 Price | 500 SAR |
| Package 1 Duration | 30 days |
| Package 1 Ads Count | 3 ads |
| Package 1 Featured Ads | 1 featured ad |
| Package 2 Name | `باقة النخبة` |
| Package 2 Price | 1200 SAR |
| Package 2 Duration | 90 days |
| Package 2 Ads Count | 10 ads |
| Package 2 Featured Ads | 3 featured ads |

# Preconditions
1. User is an accepted lessor.
2. At least two active subscription packages are configured and published in the system.
3. Lessor has no pending payment requests.

# Steps
1. Log in to the application as an accepted lessor.
2. Open the dashboard and tap on the card «اختر باقة لنشر إعلاناتك» or navigate to "Packages" (`الباقات`).
3. Observe the displayed packages list.
4. Verify the details displayed on each package card.

# Expected Result
1. The packages selection screen displays cards for all active packages.
2. Each package card clearly displays:
   - Package price (in SAR).
   - Package duration (in days).
   - Total number of ads allowed.
   - Number of featured ads included.
3. No free packages are offered (all packages have valid non-zero prices).

# Notes
- Requirement: UF-42 Main Flow Step 1 & Notes.
- Order is governed by package priority set in admin settings.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
