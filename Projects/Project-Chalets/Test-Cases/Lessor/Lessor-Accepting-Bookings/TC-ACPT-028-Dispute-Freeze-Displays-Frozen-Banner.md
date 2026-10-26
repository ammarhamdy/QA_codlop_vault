---
tc_id: TC-ACPT-028
title: Dispute Freeze - Prominent Banner Displays Dispute Reference and Frozen State
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Dispute ID | `DSP-9481` |
| Expected Frozen Banner Text | `الحجز مجمّد حتى صدور قرار النزاع DSP-9481` |

# Preconditions
1. A dispute (ID: `DSP-9481`) has been opened on the booking.
2. The booking is in a frozen dispute state.

# Steps
1. As the lessor, open "My Places' Bookings".
2. Tap on the booking associated with dispute `DSP-9481`.
3. Verify the banners and headers rendered on screen.

# Expected Result
1. A prominent freeze banner is displayed at the top of the booking view.
2. The banner explicitly states: `الحجز مجمّد حتى صدور قرار النزاع DSP-9481`.
3. The lessor is clearly advised that all actions remain frozen until formal resolution by Support.

# Notes
- Requirement: UF-80 (Alternative Flow A1), UF-83 (Main Flow Step 1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
