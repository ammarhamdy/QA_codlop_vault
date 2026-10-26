---
tc_id: TC-ACPT-022
title: Reject Booking - Customer Escalation Enables "Report a Problem" and Type A Dispute
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Rejection Scenario | Lessor rejected booking claiming "Amount not received" |
| Customer Action | Customer asserts funds were transferred and taps "Report a Problem" (`الإبلاغ عن مشكلة`) |
| Resulting Dispute Type | **Type A Dispute** (`نزاع من النوع A` - UF-08) |

# Preconditions
1. Lessor rejected the booking with reason `لم يصل المبلغ`.
2. Customer is viewing the rejected booking details.

# Steps
1. In the customer rejected booking view, locate the **"Report a Problem"** (`الإبلاغ عن مشكلة`) action.
2. Tap "Report a Problem".
3. Follow the prompt confirming that the transfer was indeed executed.
4. Submit the dispute report.

# Expected Result
1. The customer view provides an accessible "Report a Problem" option on rejected bookings.
2. Tapping it opens the Type A dispute submission workflow (UF-08).
3. The dispute attaches to the booking, initiating the support review process.

# Notes
- Requirement: UF-06 (Main Flow Step 7, Alternative Flow A1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
