---
tc_id: TC-ACPT-035
title: Own Chalet Navigation - Tapping Ad Management Navigates to Places and Ad Details
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| UI Element | Action | Target Destination |
| ---------- | ------ | ------------------ |
| `إدارة الإعلان` (Ad Management) | Tap Button | Places (`الأماكن`), with route to Ad Details (UF-49) |

# Preconditions
1. Lessor is viewing the public page of their own chalet.
2. The "Ad Management" (`إدارة الإعلان`) button is rendered.

# Steps
1. Tap on the **"Ad Management"** (`إدارة الإعلان`) button.
2. Verify the screen transition and target navigation destination.

# Expected Result
1. Tapping the button routes the lessor to the Places (`الأماكن`) section of the lessor dashboard.
2. From this destination, the lessor can seamlessly navigate into "Place and Ad Details" (`تفاصيل المكان والإعلان`) to modify their listing.

# Notes
- Requirement: UF-84 (Alternative Flow A1; Notes - closed questions: "Open the Places and from places can navigate to Ad Details").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
