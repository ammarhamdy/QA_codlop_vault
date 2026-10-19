---
tc_id: TC-RAT-014
title: Verify System Prevents Lessors from Rating Their Own Properties
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor User ID | `USR-LESSOR-99` |
| Owned Chalet ID | `CH-501` (`شاليه النخبة`) |
| Booking / External Stay ID | `EXT-9901` (Recorded under Lessor's personal number) |

# Preconditions
1. User `USR-LESSOR-99` is the registered owner/lessor of `شاليه النخبة`.
2. An external stay `EXT-9901` was recorded for `شاليه النخبة` referencing the lessor's phone number.
3. Check-out time has passed.

# Steps
1. Log in to the application using Lessor `USR-LESSOR-99`'s account.
2. Navigate to "My Stays and Rating Invitations" or attempt to trigger a rating submission for `EXT-9901` on `CH-501`.
3. If an invitation or rating form appears, attempt to submit stars and a review comment.
4. If a direct API call `/api/ratings` is sent using the lessor's auth token for their own chalet property.
5. Observe system validation and authorization response.

# Expected Result
1. The lessor is strictly prohibited from rating their own property.
2. The UI does not offer a "Rate Your Stay" option for properties owned by the logged-in user.
3. Any rating submission attempt is blocked by business logic with an authorization error (e.g., self-rating not permitted).
4. No self-rating is created or factored into the property's average score.

# Notes
- Requirement: UF-14 Preconditions & Alternative Flow E5 ("The customer is the lessor of this place -> Not allowed to rate").
- Critical integrity control preventing fraudulent rating manipulation.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
