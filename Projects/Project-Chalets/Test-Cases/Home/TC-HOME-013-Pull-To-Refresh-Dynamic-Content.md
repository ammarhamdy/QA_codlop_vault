---
tc_id: TC-HOME-013
title: Verify Pull-to-Refresh Updates Dynamic Content on Home Screen
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Action | Pull down gesture on the Home screen |
| Refresh Target | Banners, Featured Listings, Place Types, and system configuration |

# Preconditions
1. Mobile application is open on the Home screen.
2. An update occurs in the backend while the user is on the screen:
   - A new featured chalet is published.
   - An expired banner is removed or a newly activated banner becomes valid.

# Steps
1. Open the Home screen on the test device.
2. Observe current banners and featured listings.
3. Publish a new featured chalet and activate a new banner in the backend.
4. Perform a swipe-down / pull-down gesture from the top of the Home screen to trigger pull-to-refresh.
5. Observe the loading/spinner indicator.
6. Observe screen state after the refresh completes.

# Expected Result
1. The pull-down gesture smoothly initiates the native refresh indicator.
2. The application requests updated data from the server.
3. The newly published featured chalet appears in the "المميزة" section (respecting the 10-item cap).
4. Newly active banners appear and expired/unavailable banners disappear.
5. The refresh indicator dismisses upon completion.

# Notes
- Requirement: `سحب للتحديث`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
