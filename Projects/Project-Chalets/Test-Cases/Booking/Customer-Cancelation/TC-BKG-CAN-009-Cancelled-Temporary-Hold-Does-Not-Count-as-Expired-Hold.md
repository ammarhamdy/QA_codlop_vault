---
tc_id: TC-BKG-CAN-009
title: Cancelled Temporary Hold Does Not Count as Expired Hold
priority: High
status: Ready
type: Regression
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Customer has 2 naturally expired holds and 1 self-cancelled hold on same day |

# Preconditions

-Customer is eligible to create a temporary hold before reaching the expiry ban threshold.

# Steps

1. Create and allow two holds to expire naturally.
2. Create a third hold and cancel it manually.
3. Attempt to create another eligible hold.

# Expected Result

- Manual cancellation is not counted as a third expired hold.
- No 24-hour ban is applied solely due to the manually cancelled hold.
- New hold is evaluated under normal active-hold and availability limits.

# Notes



# Attachments



# Script



---
*Last Updated: 2026-10-21 09:00*
