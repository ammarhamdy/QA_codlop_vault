---
tc_id: TC-FAV-020
title: Verify Store Download Buttons Redirect to Configured URLs and Handle Unconfigured Fallback
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Configured App Store Link | `https://apps.apple.com/app/id6470000000` |
| Configured Google Play Link | `https://play.google.com/store/apps/details?id=sa.codlop.chalets` |
| Shared URL | `https://chalets.codlop.sa/p/k7x9m2q` |

# Preconditions
1. Admin settings has two configured store URLs (iOS App Store and Android Google Play).
2. Shared web landing page is loaded on a device without the mobile app.

# Steps
1. Tap the **"App Store"** button on the shared landing page; verify redirection target.
2. Tap the **"Google Play"** button on the shared landing page; verify redirection target.
3. In staging/test environment, clear both store URL configurations from the admin settings (simulate unconfigured store links).
4. Reload the shared link `https://chalets.codlop.sa/p/k7x9m2q`.
5. Observe system handling when store links are not yet configured.

# Expected Result
1. Tapping App Store routes the user directly to the configured iOS App Store listing (`https://apps.apple.com/app/id6470000000`).
2. Tapping Google Play routes the user directly to the configured Google Play listing (`https://play.google.com/store/apps/details?id=sa.codlop.chalets`).
3. Under Step 5, if the store links have not been configured in admin settings prior to launch, the system safely renders a 404 page rather than broken dead links.

# Notes
- Requirement: UF-22 Step 3 and Notes ("Store links come from the admin settings (two links, set before launch). Closed questions: What if the store links are not configured yet? Show 404 page").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
