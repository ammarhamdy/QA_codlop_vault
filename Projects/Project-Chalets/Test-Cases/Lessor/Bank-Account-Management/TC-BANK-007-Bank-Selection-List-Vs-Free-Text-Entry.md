---
tc_id: TC-BANK-007
title: Bank Selection - Select from Saudi Banks List or Enter Free Text Bank Name
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Test Variant | Bank Entry Mode | Input Value | IBAN Bank Code Alignment | Expected Result |
| ------------ | --------------- | ----------- | ------------------------ | --------------- |
| Scenario A | Predefined List | Select `بنك الجزيرة` | Matches IBAN | Accepted |
| Scenario B | Manual Free Text | Type `بنك الخليج الدولي` | Unchecked against IBAN | Accepted |
| Scenario C | Bank Mismatch | Select `بنك الرياض` | IBAN belongs to Al Rajhi | Accepted (No bank code check) |
| Scenario D | Empty Bank | No selection / Empty text | n/a | Rejected (Error E4) |

# Preconditions
1. User is on the "Add Account" form.
2. Valid Beneficiary Name and IBAN are provided.

# Steps
1. Scenario A: Click bank dropdown, select a recognized Saudi bank (e.g., `بنك الجزيرة`), and verify selection is recorded.
2. Scenario B: Enter bank name as custom free-text input (`بنك الخليج الدولي`) and verify acceptance.
3. Scenario C: Select `بنك الرياض` while entering an IBAN belonging to a different bank identifier (e.g., Al Rajhi code `80`). Submit form.
4. Scenario D: Leave bank selection/input completely blank and attempt to submit.

# Expected Result
1. The form supports both selecting from the list of authorized Saudi banks and entering a bank name manually.
2. The system does NOT cross-verify the selected bank against the bank code embedded inside the IBAN.
3. Submitting the form with an empty bank input is rejected (Error E4).

# Notes
- Requirement: UF-71 (Main Flow Step 3; Error Flow E4; Notes - closed question: "Is the selected bank checked against the bank code inside the IBAN? No").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
