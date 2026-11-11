---
tc_id: TC-CINSP-015
title: Verify Revealed WhatsApp Action Opens Prefilled Message and Call Action Launches Native Dialer
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Client-Inspection/UF-INSP-02-Request-Chalet-Inspection.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet Name | "شاليه النخيل الفاخر" |
| Lessor Mobile | `0551122334` |
| Expected WhatsApp Text | «السلام عليكم، أستفسر عن شاليه النخيل الفاخر في تطبيق تنفيذ» |
| WhatsApp URL Scheme | `https://wa.me/966551122334?text=...` |
| Phone Call Scheme | `tel:0551122334` |

# Preconditions
1. Client has completed an inspection request or contact reveal; contact controls are currently visible on screen.
2. Device has WhatsApp installed and configured.
3. Device has native phone dialer available.

# Steps
1. On the revealed contact toolbar, tap the «واتساب» (WhatsApp) button.
2. Verify the external application launched and inspect the pre-populated message content.
3. Return to the Chalet Details screen in the app.
4. Tap the «اتصال» (Call) button.
5. Inspect the dialer application and the pre-filled phone number.

# Expected Result
1. Tapping «واتساب» launches the WhatsApp client directly to a chat session with lessor number `0551122334`.
2. The chat input contains the prefilled Arabic text verbatim: «السلام عليكم، أستفسر عن شاليه النخيل الفاخر في تطبيق تنفيذ».
3. Tapping «اتصال» opens the device native telephone dialer with lessor phone number `0551122334` ready for placing the call.
4. Neither action requires in-app messaging or platform payment processing.

# Notes
- Verifies requirements `BR-INSP-09`, `BR-INSP-10` and Main Flow Step 7.
- Direct communication relies on standard URL schemes (`tel:` and WhatsApp deep links); no complex chat integration.

# Attachments

# Script

---
*Last Updated: 2026-11-10 14:20*
