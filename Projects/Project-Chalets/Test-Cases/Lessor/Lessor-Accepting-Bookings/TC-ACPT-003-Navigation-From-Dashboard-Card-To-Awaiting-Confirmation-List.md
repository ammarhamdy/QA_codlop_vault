---
tc_id: TC-ACPT-003
title: Tapping Dashboard Card Opens My Places Bookings Filtered to Awaiting Confirmation
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
| Entry Point | Dashboard Card `حجوزات بانتظار تأكيدك` |
| Destination View | "My Places' Bookings" (`حجوزات أماكني`) |
| Active Filter / Tab | "Awaiting Your Confirmation" (`بانتظار تأكيدك`) |

# Preconditions
1. Lessor has at least one booking awaiting confirmation.
2. Lessor is on the dashboard.

# Steps
1. Tap on the dashboard card `حجوزات بانتظار تأكيدك`.
2. Observe the screen navigation and resulting view.
3. Verify which tab is active and which bookings are listed.

# Expected Result
1. The application transitions smoothly to "My Places' Bookings" (`حجوزات أماكني`).
2. The view is pre-filtered to the "Awaiting Your Confirmation" (`بانتظار تأكيدك`) tab.
3. Only bookings awaiting the lessor's decision are displayed in the list.

# Notes
- Requirement: UF-80 (Main Flow Step 3).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
