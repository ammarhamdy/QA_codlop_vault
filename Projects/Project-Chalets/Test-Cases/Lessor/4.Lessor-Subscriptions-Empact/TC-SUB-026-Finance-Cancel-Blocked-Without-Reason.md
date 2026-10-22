---
tc_id: TC-SUB-026
title: Verify System Blocks Subscription Cancellation When Reason Is Missing
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Subscription ID | `SUB-2026-00491` |
| Reason Input | `""` (Empty string / Whitespace only) |

# Preconditions
1. Subscription `SUB-2026-00491` is `Active`.
2. Finance admin initiates cancellation.

# Steps
1. On subscription `SUB-2026-00491`, open the cancellation modal.
2. Leave the reason text box completely empty.
3. Tap **Confirm Cancellation** (`تأكيد الإلغاء`).
4. Observe UI validation and error response.

# Expected Result
1. The cancellation action is blocked immediately.
2. A validation error indicates that a cancellation reason is mandatory.
3. The subscription status remains strictly `Active`.

# Notes
- Requirement: UF-62 Error Flow E1 ("Cancel without a reason -> Not allowed, the reason is mandatory").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
