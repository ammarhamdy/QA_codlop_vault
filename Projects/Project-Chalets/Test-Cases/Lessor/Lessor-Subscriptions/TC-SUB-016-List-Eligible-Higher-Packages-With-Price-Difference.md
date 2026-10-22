---
tc_id: TC-SUB-016
title: Verify Upgrade Selection Lists Only Eligible Higher Packages with Prorated Price Difference
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Current Package | Candidate Package A | Candidate Package B | Candidate Package C |
| --------------- | ------------------- | ------------------- | ------------------- |
| `باقة البداية` (3 ads, 30 days, 300 SAR -> 10 SAR/day) | `باقة النخبة` (10 ads, 30 days, 600 SAR -> 20 SAR/day) | `باقة اقتصادية` (2 ads, 30 days, 200 SAR) | `باقة مطولة رخيصة` (5 ads, 90 days, 450 SAR -> 5 SAR/day) |
| Eligibility | - | **Eligible** (Higher daily price, higher ad limit) | **Ineligible** (Lower ad limit) | **Ineligible** (Lower daily price) |

# Preconditions
1. Lessor has an active subscription to `باقة البداية` (3 ads, 30 days, 300 SAR).
2. Subscription has 15 days remaining.
3. No pending payment requests exist.

# Steps
1. In "My Subscription", tap **"Upgrade"** (`ترقية`).
2. Review the list of packages displayed for upgrade.
3. Check the calculated credit and required amount displayed for eligible packages.

# Expected Result
1. The upgrade screen only presents packages that satisfy both eligibility criteria:
   - Higher daily price rate than the current package.
   - Ad quota limit equal to or greater than the current package.
2. Ineligible packages (Candidate B and C) are filtered out.
3. For each eligible package (Candidate A), the UI clearly shows: `«رصيد اشتراكك الحالي 150.00 ر.س — المبلغ المطلوب 450.00 ر.س»`.

# Notes
- Requirement: UF-60 Main Flow Steps 1 to 2.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
