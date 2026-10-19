---
tc_id: TC-DSP-008
title: Verify Customer Rating Is Saved but Unpublished Until Dispute Is Closed
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000808` |
| Chalet ID | `CHALET-5501` |
| Rating Score | `1 Star` |
| Rating Review Text | `تجربة سيئة والمكان غير مطابق للصور` |
| Dispute Reference | `DSP-2026-000103` |

# Preconditions
1. Customer completed a stay or had a confirmed booking `BKG-2026-000808` and submitted a 1-star review.
2. A dispute (`DSP-2026-000103`) is subsequently opened on `BKG-2026-000808`.

# Steps
1. Submit customer rating for `BKG-2026-000808`.
2. Open dispute `DSP-2026-000103` on the booking.
3. As an external visitor, navigate to `CHALET-5501` public details page and reviews list.
4. Verify whether the newly submitted review is publicly published or affects the overall chalet score.
5. In Support console, resolve and formally close dispute `DSP-2026-000103`.
6. Re-check the public chalet reviews page as an external visitor.

# Expected Result
1. The submitted rating and review are stored in the database.
2. While the dispute remains open or under review, the rating is kept unpublished and does not affect the public rating average of `CHALET-5501`.
3. Once the dispute is formally closed, the rating is evaluated and published in accordance with dispute closure rules.

# Notes
- Requirement: UF-08 Alternative Flow A6 ("A rating already exists on the booking: Rating is saved but not published until the dispute is closed").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
