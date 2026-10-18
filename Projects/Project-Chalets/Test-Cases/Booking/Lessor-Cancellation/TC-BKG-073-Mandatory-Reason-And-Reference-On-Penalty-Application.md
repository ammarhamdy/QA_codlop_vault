---
tc_id: TC-BKG-073
title: Verify Support Penalty Application Enforces Mandatory Reason and Dispute Reference
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor ID | `LESSOR-3012` |
| Proposed Step | `Step 1: Warning` |
| Valid Dispute Reference | `DSP-2026-000090` |
| Valid Justification Reason | `عدم رد المبلغ للعميل خلال المهلة المحددة بقرار النزاع` |

# Preconditions
1. Support agent has opened the penalty proposal review modal for `LESSOR-3012`.
2. System has pre-filled the proposed step based on lessor history.

# Steps
1. Attempt to apply the proposed penalty leaving both reason and reference fields empty.
2. Enter the valid reason, but leave the reference field blank; attempt to submit.
3. Enter the valid reference, but leave the reason field blank; attempt to submit.
4. Enter both valid reason and valid dispute reference (`DSP-2026-000090`).
5. Tap **"Apply Penalty"** (`تطبيق العقوبة`).

# Expected Result
1. Applying the penalty without a reason or without a reference is strictly blocked.
2. The UI highlights missing mandatory fields, and backend APIs reject requests lacking either field.
3. When both reason and reference are entered, the penalty is applied successfully.
4. The penalty log records the step, reason, reference, imposing employee ID, and timestamp.

# Notes
- Requirement: UF-11 Step 3 and Error Flow E1 ("Reason or reference is missing: Cannot be applied, both are mandatory").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
