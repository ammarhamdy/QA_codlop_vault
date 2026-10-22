---
tc_id: TC-SUB-020
title: Verify Automatic Restoration of All Ads When New Package Capacity Fits
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Ad ID | Status Before Expiry | Status During Expiry | New Package Ad Quota | Restored Status |
| ----- | -------------------- | -------------------- | -------------------- | --------------- |
| `AD-501` | `Published` | `Hidden for Subscription Expiry` | 5 ads | `Published` (`منشور`) |
| `AD-502` | `Published` | `Hidden for Subscription Expiry` | 5 ads | `Published` (`منشور`) |
| `AD-503` | `Disabled` | `Hidden for Subscription Expiry` | 5 ads | `Disabled` (`معطل`) |

# Preconditions
1. Lessor previously had 3 ads that were hidden due to subscription expiry.
2. Lessor performs late renewal with a package permitting up to 5 ads.
3. The renewal payment is approved and becomes `Active`.

# Steps
1. As Finance admin, approve the late renewal payment request.
2. Observe the automatic ad restoration process executed by the system.
3. Query the status of `AD-501`, `AD-502`, and `AD-503`.
4. Check lessor's consumed credits count.
5. In public search listings, search for `AD-501`, `AD-502`, and `AD-503`.

# Expected Result
1. Because the new package limit (5 ads) accommodates all hidden ads (3 ads), all ads are automatically restored without requiring manual selection.
2. Each ad returns strictly to its saved previous state (`AD-501` and `AD-502` return to `Published`; `AD-503` returns to `Disabled`).
3. Restoring existing ads consumes zero new credits (consumed count remains unchanged).
4. `AD-501` and `AD-502` immediately reappear in public search results.

# Notes
- Requirement: UF-61 Main Flow Step 2 & Alternative Flow A2.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
