---
tc_id: TC-CINSP-016
title: Verify Revealed Copy Number Copies to Clipboard with Toast and Open in Maps Launches Map at Exact Pin
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor Mobile | `0551122334` |
| Chalet Geo-Coordinates | Latitude: `24.7136`, Longitude: `46.6753` (Exact Location) |
| Expected Toast | «تم نسخ الرقم» (Phone number copied) |
| Target Actions | «نسخ الرقم» (Copy Number), «افتح في الخرائط» (Open in Maps) |

# Preconditions
1. Client has completed an inspection request on the chalet listing.
2. Contact options are visible, and the map display is upgraded to the exact pin.

# Steps
1. Tap the «نسخ الرقم» (Copy Number) action button.
2. Verify the system feedback toast message.
3. Open a notepad or text input on the device and perform a "Paste" action.
4. Return to the chalet screen and tap «افتح في الخرائط» (Open in Maps).
5. Observe the external mapping application launched and the pinned location.

# Expected Result
1. Tapping «نسخ الرقم» displays the confirmation toast message: «تم نسخ الرقم».
2. The clipboard contains the exact lessor mobile number `0551122334`.
3. Tapping «افتح في الخرائط» launches the default mapping service (e.g. Google Maps / Apple Maps).
4. The map opens centered exactly at the chalet's verified coordinates (`24.7136, 46.6753`).

# Notes
- Verifies flow alternatives `A3` and `A4` and requirement `BR-INSP-09`.
- Ensures accurate location disclosure occurs only after identity disclosure.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
