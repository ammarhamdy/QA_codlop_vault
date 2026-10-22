---
tc_id: TC-RENT-020
title: Verify Closing Selected Days with Predefined Reasons
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Closure Reason Option | Description | Expected Status Badge |
| --------------------- | ----------- | --------------------- |
| Maintenance (`صيانة`) | Routine or urgent facility repairs | `مغلق (صيانة)` |
| Private Use (`استخدام خاص`) | Lessor personal reservation | `مغلق (استخدام خاص)` |
| External Booking / Other (`حجز خارجي / أخرى`) | Off-platform rental | `مغلق (حجز خارجي)` |

# Preconditions
1. Future date `2026-12-01` is currently available with no bookings.

# Steps
1. Select date `2026-12-01` and tap **"Edit Selected"**.
2. Select status **"Closed"** (`مغلق`).
3. Observe the closure reason selector dropdown/radio options.
4. Select reason **Maintenance** (`صيانة`).
5. Enter valid custom price and save.
6. Repeat for Private Use and External Booking reasons on separate test days.

# Expected Result
1. Selecting status "Closed" requires or allows choosing a specific closure reason: Maintenance, Private Use, or External Booking / Other.
2. The calendar records and renders the reason on the date cell in the lessor view.
3. On the public customer view, the date is marked as unavailable/closed without exposing sensitive internal reasons.

# Notes
- Requirement: UF-67 Main Flow Step 3 ("Closed with a reason (maintenance, private use, external booking other)").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
