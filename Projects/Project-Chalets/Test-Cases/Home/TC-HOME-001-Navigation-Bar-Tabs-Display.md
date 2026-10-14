---
tc_id: TC-HOME-001
title: Verify Bottom Navigation Bar Displays Five Primary Tabs with Home Active
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
---

# Test Data
| Field              | Value                                                                             |
| ------------------ | --------------------------------------------------------------------------------- |
| Navigation Tabs    | `الرئيسية`, `البحث`, `المفضلة`, (`الإشعارات`==🟢moved to top app bar==) , `حسابي` |
| Default Active Tab | `الرئيسية` (Home)                                                                 |

# Preconditions
1. Mobile application is installed and launched on the test device.
2. User is on the Home screen (as a visitor or logged-in client).

# Steps
1. Open the mobile application and land on the Home screen.
2. Inspect the bottom navigation bar.
3. Verify the presence, icon, and label of all 5 navigation tabs:
   - الرئيسية (Home)
   - البحث (Search)
   - المفضلة (Favorites)
   - الإشعارات (Notifications)
   - حسابي (My Account)
4. Check which tab is currently selected/active.

# Expected Result
1. The bottom navigation bar is visible and renders exactly five tabs with correct labels and icons: `الرئيسية`, `البحث`, `المفضلة`, `الإشعارات`, `حسابي`.
2. The `الرئيسية` tab is highlighted as the currently active tab.
3. The navigation bar remains persistent at the bottom of the screen.

# Notes
- Requirement: `شريط التنقل: الرئيسية، البحث، المفضلة، الإشعارات، حسابي`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
