---
tc_id: TC-PKG-031
title: Verify System Enforces at Least One Enabled Payment Method per Platform
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Platform | Current Enabled Methods | Admin Attempted Action | Expected Result |
| -------- | ----------------------- | ---------------------- | --------------- |
| Android | Bank Transfer only (Gateway is off) | Turn Bank Transfer OFF | Blocked (E1) |
| iOS | Bank Transfer & Gateway | Turn Gateway OFF | Allowed (Bank Transfer remains on) |
| iOS | Bank Transfer only | Turn Bank Transfer OFF | Blocked (E1) |

# Preconditions
1. Admin user is in Admin Panel -> Packages and Payment Settings -> Payment Methods.

# Steps
1. Navigate to Android platform payment method toggles where only Bank Transfer is enabled.
2. Attempt to toggle Bank Transfer to OFF (which would leave 0 enabled payment methods on Android).
3. Attempt to save changes.
4. Observe system validation.
5. On iOS platform where both Bank Transfer and Gateway are enabled, toggle Gateway to OFF and save.

# Expected Result
1. The system blocks turning off the last enabled payment method on any platform.
2. The attempt to leave a platform with zero enabled payment methods is rejected with an error (Error Flow E1).
3. Toggling off an optional method while at least one alternative method remains active is permitted and saves successfully.

# Notes
- Requirement: UF-48 Error Flow E1 ("The last enabled method on a platform is turned off -> Not allowed, each platform needs at least one").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
