---
tc_id: TC-BANK-031
title: Chalet Ad Publication - Block Ad Publishing When Lessor Has No Bank Account
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lessor Bank Accounts Count | `0` |
| Chalet Status | Draft / Completed Details |
| Attempted Action | Publish Ad (`نشر الإعلان` / UF-51) |

# Preconditions
1. Lessor is accepted and logged in with zero bank accounts configured.
2. Lessor has drafted a chalet with all property details and media filled out.

# Steps
1. Open the drafted chalet ad in the chalet management section.
2. Tap **"Publish Ad"** (`نشر الإعلان`) or submit for publication.
3. Observe the system response.

# Expected Result
1. The system blocks publication of the chalet advertisement.
2. An error or modal prompts the lessor that at least one active bank account must be added before an advertisement can be published.
3. The ad remains in draft/unpublished status.

# Notes
- Requirement: UF-77 (Notes - closed questions: "Can an ad be published with no account? No").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
