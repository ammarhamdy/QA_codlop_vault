---
tc_id: TC-DSP-009
title: Verify Evidence Confidentiality Isolates Customer Evidence and Lessor Statement to Support Only
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
| Dispute Reference | `DSP-2026-000104` |
| Customer Evidence File | `customer_proof.pdf` |
| Lessor Bank Statement | `lessor_statement_oct2026.pdf` |

# Preconditions
1. Dispute `DSP-2026-000104` has been submitted by Customer with `customer_proof.pdf`.
2. Lessor has uploaded their bank statement `lessor_statement_oct2026.pdf`.
3. Support agent, Customer, and Lessor accounts are active.

# Steps
1. As Lessor, open dispute `DSP-2026-000104` in the lessor portal and inspect the evidence section.
2. Attempt to click or download `customer_proof.pdf` as Lessor.
3. As Customer, open dispute `DSP-2026-000104` and inspect the lessor response section.
4. Attempt to view or download `lessor_statement_oct2026.pdf` as Customer.
5. As Support Agent, open dispute `DSP-2026-000104` in the support console.

# Expected Result
1. The Lessor sees only a count/badge of uploaded evidence items (e.g. `1 ملف مرفق من العميل`) and cannot open, preview, or download customer evidence.
2. Any direct API call by Lessor to download customer evidence returns HTTP 403 Forbidden.
3. The Customer is strictly prohibited from viewing or downloading the lessor's uploaded bank statement (returns HTTP 403 Forbidden).
4. The Support Agent has exclusive authorization to review both the customer's evidence and the lessor's bank statement.

# Notes
- Requirement: UF-08 Step 8 and UF-15 Error Flows E3, E4 ("Shows the other party only a notice of how many evidence items were uploaded (they cannot open them). Customer tries to open the lessor's statement: Not allowed, support only. Lessor tries to open the customer's evidence: Not allowed. Lessor sees only the count of items").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
