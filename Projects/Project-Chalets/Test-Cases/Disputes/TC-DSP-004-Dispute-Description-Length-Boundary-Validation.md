---
tc_id: TC-DSP-004
title: Verify Dispute Description Enforces Length Boundary Between 20 and 2000 Characters
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
| Booking Reference | `BKG-2026-000804` |
| Below Min Invalid (19 chars) | `المكان غير مطابق ابدا` (19 characters) |
| Min Boundary Valid (20 chars) | `المكان غير مطابق إطلاقا` (20 characters) |
| Max Boundary Valid (2000 chars)| String of exactly 2000 characters |
| Above Max Invalid (2001 chars)| String of 2001 characters |
| Expected Short Error Message | `اكتب وصف المشكلة (20 حرفًا على الأقل)` |

# Preconditions
1. Customer is on the "Open Dispute" form for booking `BKG-2026-000804`.
2. Dispute type has been selected.

# Steps
1. Enter a 19-character description (`المكان غير مطابق ابدا`) and tap Submit.
2. Verify the system validation message.
3. Enter a 20-character description (`المكان غير مطابق إطلاقا`) and tap Submit.
4. Paste an oversized string of 2001 characters into the description field and attempt submission.
5. Trim the description to exactly 2000 characters and submit.

# Expected Result
1. Entering 19 characters (< 20) is blocked with the exact Arabic error message: `«اكتب وصف المشكلة (20 حرفًا على الأقل)»`. The user can edit and resend.
2. Entering 20 characters (minimum boundary) passes validation.
3. Entering 2001 characters (> 2000) is blocked by character counter or backend validation.
4. Entering 2000 characters (maximum boundary) passes validation and allows submission.

# Notes
- Requirement: UF-08 Step 3 and Error Flow E3 ("Description is shorter than 20 characters: Blocked with «اكتب وصف المشكلة (20 حرفًا على الأقل)». Customer can edit and resend").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
