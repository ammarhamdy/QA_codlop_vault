---
tc_id: TC-BANK-026
title: Chalet Account Assignment - Assign One Account to Multiple Chalets and to Unpublished Chalet Ads
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Target Property | Ad Publication Status | Bank Account Assigned |
| --------------- | --------------------- | --------------------- |
| Chalet Alpha | Published (`منشور`) | Account #3 |
| Chalet Beta | Published (`منشور`) | Account #3 (Reused across properties) |
| Chalet Gamma | Unpublished Draft / No Ad (`مسودة / غير منشور`) | Account #3 |

# Preconditions
1. Lessor has Account #3 saved in their bank accounts list.
2. Lessor owns Chalet Alpha, Chalet Beta (both published), and Chalet Gamma (no published ad).

# Steps
1. Open "Place and Ad Details" for Chalet Alpha, select Account #3, and save with OTP.
2. Open "Place and Ad Details" for Chalet Beta, select Account #3, and save with OTP.
3. Open "Place and Ad Details" for Chalet Gamma (which has no published ad), select Account #3, and save with OTP.

# Expected Result
1. The system allows assigning the same bank account to multiple different chalets owned by the lessor.
2. The assignment feature is fully available for chalets that do not currently have a published ad.
3. All three chalets successfully save and associate with Account #3.

# Notes
- Requirement: UF-75 (Notes - closed questions: "Can one account be assigned to many chalets? Yes", "Is the assignment available for a chalet that has no published ad? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
