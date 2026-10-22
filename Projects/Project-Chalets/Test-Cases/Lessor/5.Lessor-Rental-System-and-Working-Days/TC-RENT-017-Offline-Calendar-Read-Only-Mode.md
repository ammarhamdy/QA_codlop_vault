---
tc_id: TC-RENT-017
title: Verify Calendar Operates in Read-Only Mode When Network Connection Is Lost
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Network State | UI Behavior | Edit Action Status |
| ------------- | ----------- | ------------------ |
| Offline / No Connection | Renders cached calendar with offline banner | Disabled / Read-Only |

# Preconditions
1. Lessor previously loaded calendar data for the chalet.
2. Device network connectivity is disconnected (Airplane mode / offline).

# Steps
1. Disconnect device from internet.
2. Open the Calendar screen for the chalet.
3. Observe screen layout and connectivity notices.
4. Select a date and attempt to tap **"Edit Selected"** (`تعديل المحدد`).

# Expected Result
1. The calendar renders in a strictly read-only mode using cached data.
2. An offline status banner indicates that changes cannot be made without an active internet connection.
3. The "Edit Selected" button is disabled or tapping it informs the user to reconnect.

# Notes
- Requirement: UF-66 Alternative Flow A1 & UF-67 Error Flow E3.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
