---
tc_id: TC-FAV-013
title: Verify Shared Web Link Triggers Deep Linking Directly to Place Page When App Is Installed
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Shared Public Link | `https://chalets.codlop.sa/p/k7x9m2q` |
| Target Chalet | `شاليه الأندلس` |
| Device State | Chalets mobile application is installed |

# Preconditions
1. Test device has the Chalets mobile application installed and configured to handle App Links (Android) / Universal Links (iOS).
2. The user is on a chat app or web browser with the shared link visible.

# Steps
1. Tap the shared URL `https://chalets.codlop.sa/p/k7x9m2q` on the device.
2. Observe system routing and application launch behavior.
3. Verify landing screen inside the mobile app.

# Expected Result
1. The operating system immediately intercepts the URL via Universal / App Links without opening a secondary web landing page.
2. The Chalets mobile application launches directly.
3. The app navigates straight to the place details page for `شاليه الأندلس`, loading photos, prices, calendar, and amenities.
4. The user experiences seamless deep linking with zero interstitial prompts.

# Notes
- Requirement: UF-22 Step 1 ("Opens the link on a device with the app: Opens the place page inside the app directly").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
