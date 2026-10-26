---
tc_id: TC-ACPT-011
title: Confirm Booking - Immediate Status Transition to "Booked"
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Entity | Pre-Confirmation State | Post-Confirmation State |
| ------ | ---------------------- | ----------------------- |
| Booking Record | Status: `Awaiting Lessor Confirmation` | Status: `Booked` (`محجوز` / `مؤكد`) |
| Action | Tap "Confirm" in modal | Status committed immediately |

# Preconditions
1. Booking is in status "Awaiting Lessor Confirmation".
2. Lessor is in the confirmation modal.

# Steps
1. Tap **"Confirm"** (`تأكيد`) in the confirmation modal.
2. Observe the UI response and toast/banner.
3. Refresh the booking details screen.
4. Check the booking entry in "My Places' Bookings" list under the "Booked" section.

# Expected Result
1. The booking status immediately updates to **"Booked"** (`محجوز`).
2. The booking is removed from the "Awaiting Your Confirmation" queue and placed in the "Booked" / active bookings list.
3. The confirmation countdown timer terminates and is replaced with booking confirmation metadata.

# Notes
- Requirement: UF-04 (Main Flow Step 4, Postconditions).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
