---
tc_id: TC-JOIN-018
title: Verify Map Pin Location Permission Prompt and Manual Pin Placement Fallback
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Permission Response | Expected Map Behavior |
| ------------------- | --------------------- |
| Allow (`سماح`) | Map centers automatically on user's current GPS location |
| Set Manually (`تحديد يدويًا`) / Deny | Map centers on selected City Center with address search bar |

# Preconditions
1. User is on the "Add Place" screen with City = `الرياض` selected.
2. Device location permission has not yet been granted.

# Steps
1. Tap the map location pin selector.
2. Observe the custom in-app permission prompt: **Allow** (`سماح`) vs **Set Manually** (`تحديد يدويًا`).
3. In Session A, tap **Allow** and grant OS location permission.
4. Observe map center coordinates.
5. In Session B, tap **Set Manually** (or deny OS permission).
6. Observe map center and manual search controls.
7. Manually drag the pin and drop it on the desired chalet location.

# Expected Result
1. When allowed, the map immediately centers on user's device coordinates.
2. When denied or set manually, the map opens at the selected City Center, provides an address search bar, and allows manual pin dragging.
3. In both cases, dropping the pin updates latitude and longitude coordinates accurately.

# Notes
- Requirement: UF-29 Main Flow Steps 3 to 4 & Alternative Flow A1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
