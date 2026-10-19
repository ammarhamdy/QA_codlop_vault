---
tc_id: TC-FAV-011
title: Verify Dismissing Native Share Sheet Discards Share Action Without Application Side Effects
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet Name | `منتجع الواحة` |
| Action | Tap outside or swipe down to dismiss share sheet |

# Preconditions
1. Customer is on the place details screen for `منتجع الواحة`.

# Steps
1. Tap the **"Share"** button to open the native OS share sheet.
2. Tap outside the share sheet, press the back button, or swipe down to dismiss the modal without selecting any target app.
3. Observe the mobile application state, screen responsiveness, and UI elements.

# Expected Result
1. The native share sheet closes smoothly.
2. Nothing is sent, exported, or logged as an outbound share.
3. The customer remains on the place details screen in the exact scroll position, with no crashes, freezes, or error dialogues.

# Notes
- Requirement: UF-21 Alternative Flow A1 ("Customer closes the share sheet: Nothing is sent").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
