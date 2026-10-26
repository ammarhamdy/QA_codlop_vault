---
tc_id: TC-ACPT-019
title: Reject Booking - Rejection Reason "Other" Mandates Non-Empty Details Text
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Reason Option | Details Field Input | Expected System Response |
| ------------- | ------------------- | ------------------------ |
| `أخرى` (Other) | Empty / Blank | Rejection blocked; validation required |
| `أخرى` (Other) | Whitespace only (`   `) | Rejection blocked |
| `أخرى` (Other) | `الاسم الموجود في الإيصال يختلف كلياً عن اسم العميل` | Rejection allowed and proceeds to confirmation |

# Preconditions
1. Lessor is on the rejection screen of a pending booking.

# Steps
1. Select the reason `أخرى` (Other).
2. Verify that an additional text details field appears or becomes active.
3. Leave the text field empty and attempt to submit rejection.
4. Enter only whitespace and attempt to submit rejection.
5. Enter a valid descriptive explanation (`الاسم الموجود في الإيصال يختلف كلياً عن اسم العميل`) and tap submit.

# Expected Result
1. Selecting "Other" dynamically mandates the details text field.
2. Leaving the field empty or with whitespace only blocks rejection submission.
3. Entering valid non-empty details permits submission to proceed to the confirmation dialog.

# Notes
- Requirement: UF-06 (Main Flow Step 3, Error Flow E2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
