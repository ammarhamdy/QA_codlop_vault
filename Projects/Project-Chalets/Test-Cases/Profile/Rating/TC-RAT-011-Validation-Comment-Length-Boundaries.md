---
tc_id: TC-RAT-011
title: Verify Boundary Value Validations on Rating Comment Character Length
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Boundary Condition | Comment Length | Test String Sample | Expected Status |
| ------------------ | -------------- | ------------------ | --------------- |
| Below Min (9 chars) | 9 chars | `مكان جميل` | Blocked |
| Exact Min (10 chars)| 10 chars | `مكان رائع!` | Accepted |
| Mid-range (50 chars)| 50 chars | `كانت تجربة ممتعة جداً، المرافق نظيفة والمسبح ممتاز.` | Accepted |
| Exact Max (1000 chars)| 1000 chars | 1000 valid characters string | Accepted |
| Above Max (1001 chars)| 1001 chars | 1001 characters string | Blocked / Prevented |

# Preconditions
1. Customer has an eligible completed booking with no previous rating.
2. Customer is on the rating form with 4 stars selected.

# Steps
1. Enter 9 characters (`مكان جميل`) into the comment box and tap **"Submit Rating"**.
2. Observe form response.
3. Add one character to make it exactly 10 characters (`مكان رائع!`), and observe if submit button becomes active.
4. Enter a 1000-character string into the comment field and tap **"Submit Rating"**.
5. Observe form response and character counter.
6. Attempt to enter or paste 1001 characters into the comment field.
7. Attempt to submit with 1001 characters.

# Expected Result
1. With 9 characters, submission is blocked; an error indicates that the comment must be at least 10 characters.
2. With exactly 10 characters, comment validation passes.
3. With exactly 1000 characters, comment validation passes and submission is permitted.
4. Input exceeding 1000 characters is either blocked by hard input limit (truncated at 1000 chars) or submit is blocked with a character limit validation error.

# Notes
- Requirement: UF-14 Main Flow Step 4 & Alternative Flow E2 ("Comment shorter than 10 or longer than 1000 characters -> Submit blocked").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
