---
tc_id: TC-BKG-077
title: Verify Step 4 Permanent Ban Is Restricted to General Manager and Restricts Lessor to Customer Role
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
| Lessor ID | `LESSOR-3016` |
| National ID | `1098765432` |
| Commercial Reg (CR) | `1010998877` |
| Mobile Number | `0501122334` |
| Support Agent Role | `support_agent` (Non-GM) |
| General Manager Role | `general_manager` |

# Preconditions
1. Lessor `LESSOR-3016` has accumulated violations triggering Step 4 (Permanent Ban).
2. Support agent and General Manager accounts are available.

# Steps
1. Log in as Support Agent and attempt to apply Step 4 (Permanent Ban) to `LESSOR-3016`.
2. Log in as General Manager and apply Step 4 (Permanent Ban) with reason and reference.
3. Verify status of all ads owned by `LESSOR-3016`.
4. Attempt to register a new lessor account using the same National ID (`1098765432`) or CR (`1010998877`).
5. Attempt to log in with mobile number `0501122334` into the Customer mobile application.
6. Attempt to switch or access Lessor role features with mobile number `0501122334`.

# Expected Result
1. Support agent cannot apply a permanent ban (Step 1 blocked with authorization error).
2. Only General Manager is authorized to apply Step 4.
3. Upon ban, all ads are permanently archived and disabled.
4. Registration of a new lessor account with the banned National ID or CR is blocked.
5. The banned mobile number is permitted to log in as a **Customer only**; all lessor dashboard and management access is permanently revoked.
6. Platform subscription fee is **not** refunded.

# Notes
- Requirement: UF-11 Alternative Flow A4 and Error Flow E2 ("Only the General Manager applies it. The same national ID or commercial registration cannot re-apply. The lessor's number can log in as a customer only. A support employee tries to apply a permanent ban: Not allowed, General Manager only").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
