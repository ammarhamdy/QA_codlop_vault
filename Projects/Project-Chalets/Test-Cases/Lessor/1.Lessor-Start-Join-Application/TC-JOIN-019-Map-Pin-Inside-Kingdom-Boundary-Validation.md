---
tc_id: TC-JOIN-019
title: Verify System Blocks Map Pin Placed Outside the Kingdom Boundaries
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Location Test Point | Coordinates Sample | Geographic Classification | Expected Result |
| ------------------- | ------------------ | ------------------------- | --------------- |
| Riyadh, Saudi Arabia | `24.7136, 46.6753` | Inside Kingdom of Saudi Arabia | Valid / Saved |
| Dubai, UAE | `25.2048, 55.2708` | Outside Saudi Arabia | Blocked / Error |
| Cairo, Egypt | `30.0444, 31.2357` | Outside Saudi Arabia | Blocked / Error |

# Preconditions
1. User is on the map pin placement screen.

# Steps
1. Drag the map pin to coordinates located outside the Kingdom boundaries (e.g., Dubai or Cairo).
2. Tap **Save Location** (`تأكيد الموقع`).
3. Observe validation response.
4. Drag the pin back inside Saudi Arabia (e.g., Riyadh).
5. Tap **Save Location**.

# Expected Result
1. The system performs geofence boundary checks against Saudi Arabian sovereign borders.
2. Placing the pin outside the Kingdom is rejected with an invalid geographic location error (Error Flow E2).
3. Placing the pin inside the Kingdom passes validation and successfully records latitude and longitude.

# Notes
- Requirement: UF-29 Main Flow Step 5 & Error Flow E2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
