---
tc_id: TC-BKG-CAN-045
title: Calendar Slot Released Within One Minute
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Cancelled booking had sole hold on listing slot |

# Preconditions

-Customer owns eligible booking and a second customer can view availability.

# Steps

1. Record cancellation confirmation timestamp.
2. Cancel booking.
3. From a second account refresh listing availability repeatedly for up to 60s.

# Expected Result

- Previously reserved slot becomes available within one minute.
- No overlap or duplicate active booking exists.

# Notes



# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
