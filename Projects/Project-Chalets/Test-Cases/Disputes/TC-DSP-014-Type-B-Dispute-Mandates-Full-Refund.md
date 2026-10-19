---
tc_id: TC-DSP-014
title: Verify Type B Dispute Decision Mandates Full Refund in Three Business Days
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Dispute Reference | `DSP-2026-000109` |
| Dispute Type | `Type B` (إلغاء المؤجّر للحجز المؤكد) |
| Total Paid Amount | `2,200 SAR` |
| Mandated Refund SLA | `3 Business Days` |

# Preconditions
1. Customer has opened a Type B dispute (`DSP-2026-000109`) following an unrefunded lessor cancellation.
2. Support agent is reviewing the case in Support Console.

# Steps
1. Open dispute `DSP-2026-000109` in the Support Console.
2. Verify that Type B disputes do not request bank statements and proceed directly under review.
3. Select decision outcome for Type B dispute.
4. Enter the required decision justification reason.
5. Save and issue the decision.
6. Verify the stored due date and notification sent to the lessor.

# Expected Result
1. Decision reason is mandatory; missing reason blocks saving the decision.
2. Support decision mandates that the lessor must refund the full amount (`2,200 SAR`) within exactly 3 business days.
3. Dispute status updates to **"Decision Issued"** / **"Awaiting Refund"**.
4. Both parties are notified with decision, reason, amount due (`2,200 SAR`), and the calculated due date.
5. If platform administrator changes the default refund window setting subsequent to this decision, the stored due date on this dispute remains unchanged.

# Notes
- Requirement: UF-15 Alternative Flows A4, A10, and Error Flow E1 ("Type B: Lessor must refund in full within 3 business days. Admin changes the refund days after the decision: Stored due date does not change. Reason is missing: Decision cannot be saved").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
