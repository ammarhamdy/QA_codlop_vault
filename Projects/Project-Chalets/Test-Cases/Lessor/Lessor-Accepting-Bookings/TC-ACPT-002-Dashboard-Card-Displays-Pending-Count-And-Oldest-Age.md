---
tc_id: TC-ACPT-002
title: Dashboard Card Displays Pending Bookings Count and Age of Oldest Booking
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Metric | Value |
| ----- | ----- |
| Pending Bookings Count | `3` |
| Booking #1 Receipt Upload Time | 2 hours ago |
| Booking #2 Receipt Upload Time | 8 hours ago |
| Booking #3 (Oldest) Upload Time | 14 hours ago |
| Expected Dashboard Card Title | `حجوزات بانتظار تأكيدك` |
| Expected Age Display | `منذ 14 ساعة` (Oldest booking age) |

# Preconditions
1. Lessor is accepted and logged in.
2. Lessor has three bookings in status "Awaiting Lessor Confirmation", with known distinct receipt upload timestamps.

# Steps
1. Navigate to the Lessor Dashboard home view.
2. Locate the summary card titled `حجوزات بانتظار تأكيدك`.
3. Verify the counter badge/number displayed on the card.
4. Verify the oldest booking age indicator displayed on the card.

# Expected Result
1. The card titled `حجوزات بانتظار تأكيدك` is clearly visible on the dashboard.
2. The count precisely displays `3`.
3. The age displayed on the card reflects the elapsed time of the oldest pending booking (`منذ 14 ساعة`).

# Notes
- Requirement: UF-80 (Main Flow Step 2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
