---
tc_id: TC-SUB-015
title: Verify Early Renewal with Smaller Package Disables Excess Ads at Start of New Period
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Current Large Package | New Smaller Renewal Package |
| ----- | --------------------- | --------------------------- |
| Package Name | `باقة النخبة` (10 ads limit) | `باقة البداية` (3 ads limit) |
| Published Ads | 5 active published ads | Allowed: 3 ads max (Excess: 2 ads) |

# Preconditions
1. Lessor currently has 5 published chalets under `باقة النخبة`.
2. Lessor renews early by selecting a smaller package (`باقة البداية`, limit = 3 ads).
3. The renewal is approved and sits in `Awaiting Start`.

# Steps
1. Advance system clock to the exact moment current subscription ends and new subscription starts (`00:00:00`).
2. Run system midnight subscription cutover worker.
3. Observe the state of the 5 previously published chalets.
4. Verify total published ads count against the new package limit (3 ads).

# Expected Result
1. The system enforces the new package capacity limit immediately upon its start date.
2. Excess ads (2 ads) beyond the allowed limit (3 ads) are automatically disabled.
3. The count of active published ads strictly does not exceed the new package limit of 3 ads.

# Notes
- Requirement: UF-59 Notes (Closed question: "Early renewal with a smaller package: what happens to the visible ads at the start of the new period? MUST disable the over ads").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
