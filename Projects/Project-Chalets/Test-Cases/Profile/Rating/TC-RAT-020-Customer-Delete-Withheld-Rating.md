---
tc_id: TC-RAT-020
title: Verify Author Can Delete a Withheld Rating While Dispute Is Open
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking ID | `BK-7725` |
| Dispute ID | `DSP-401` (Status: Open) |
| Review ID | `REV-9915` (Status: Withheld Until Dispute Closed) |
| Review Label in My Ratings | `محجوب لحين إغلاق النزاع` |

# Preconditions
1. Customer submitted a rating on booking `BK-7725` while dispute `DSP-401` was open.
2. The rating status is currently `Withheld Until Dispute Closed`.
3. Dispute `DSP-401` remains actively open.

# Steps
1. Customer navigates to "My Ratings" (`تقييماتي`) in the profile.
2. Locate the withheld rating `REV-9915`.
3. Verify if the **"Delete"** (`حذف`) option is present and enabled.
4. Tap **"Delete"** and confirm the deletion prompt.
5. Check the status of the rating in the database / backend.
6. Subsequently, close and resolve dispute `DSP-401`.
7. Verify whether the rating publishes upon dispute closure.

# Expected Result
1. The customer is permitted to delete a withheld rating even while the dispute is actively open.
2. Upon confirmation, the rating status transitions to `Deleted by Author`.
3. When the dispute `DSP-401` is later closed, the rating is NOT published and remains permanently deleted.
4. The stay reflects "Rating Deleted" and cannot be re-rated.

# Notes
- Requirement: UF-18 Notes (Closed question: "Can the customer delete a Withheld (محجوب) rating while the dispute is open? YES").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
