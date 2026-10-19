---
tc_id: TC-RAT-003
title: Verify Author Name Format Enforces Privacy on Public Reviews
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
| Customer Full Name | `أحمد العمري` |
| Expected Display Name | `أحمد ع.` |
| Star Rating | `4` |
| Comment Text | `المكان جميل والخدمة ممتازة، تجربة جيدة جداً.` |

# Preconditions
1. Customer `أحمد العمري` has a confirmed, completed booking for `منتجع النخيل`.
2. Customer is on the rating submission form.

# Steps
1. Select `4` stars and enter the comment.
2. Submit and confirm the rating.
3. Open the public chalet details page for `منتجع النخيل` as any public visitor or another user.
4. Locate the newly published review.
5. Inspect the author's displayed name and profile details.

# Expected Result
1. The author's name is rendered as First Name plus the first letter of the family name: `أحمد ع.`.
2. The user's full family name, phone number, and national ID are completely masked to protect privacy.

# Notes
- Requirement: UF-14 Notes (Policy confirmed in closed questions: "First name plus one letter of the family name").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
