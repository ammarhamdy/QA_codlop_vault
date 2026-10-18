---
tc_id: TC-BKG-065
title: Verify Cancellation Reason Enforces Length Boundary Between 10 and 1000 Characters
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000705` |
| Empty Input | `""` |
| Below Min Invalid (9 chars) | `أسباب خاصة` (9 chars) |
| Min Boundary Valid (10 chars) | `عطل طارئ جدا` (10 chars) |
| Max Boundary Valid (1000 chars) | String of exactly 1000 characters |
| Above Max Invalid (1001 chars) | String of 1001 characters |
| Expected Empty Error | `اكتب سبب الإلغاء` |

# Preconditions
1. Booking `BKG-2026-000705` is in "Booked" status.
2. Lessor opens the cancellation request form.

# Steps
1. Leave the reason field empty and tap Send.
2. Enter a 9-character reason (`أسباب خاصة`) and tap Send.
3. Enter a 10-character reason (`عطل طارئ جدا`) and tap Send.
4. Enter an oversized 1001-character string into the reason field and attempt submission.
5. Enter an exact 1000-character string and submit.

# Expected Result
1. When empty, system displays the exact Arabic validation message: `«اكتب سبب الإلغاء»`.
2. For 9 characters (< 10), submission is blocked with an error indicating the reason must be at least 10 characters.
3. For 10 characters (min boundary), validation passes and submission is allowed.
4. For 1001 characters (> 1000), input is blocked or submission is rejected with maximum length error.
5. For 1000 characters (max boundary), validation passes and submission is allowed.

# Notes
- Requirement: UF-09 Step 2 and Error Flows E1, E2 ("Reason is empty: Shows «اكتب سبب الإلغاء». Reason is shorter than 10 or longer than 1000 characters: Send is blocked").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
