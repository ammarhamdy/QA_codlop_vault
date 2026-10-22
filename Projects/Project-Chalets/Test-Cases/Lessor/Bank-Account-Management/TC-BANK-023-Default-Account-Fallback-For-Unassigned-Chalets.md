---
tc_id: TC-BANK-023
title: Default Account Fallback - Unassigned Chalets Automatically Adopt Current Default Account for New Bookings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | Initial Default | New Default | Chalet Specific Setting |
| ------ | --------------- | ----------- | ----------------------- |
| Chalet 101 | Account A (`SA...1111`) | Account B (`SA...2222`) | Unassigned (Uses Default) |
| Chalet 102 | Account C (`SA...3333`) | Account C (`SA...3333`) | Specifically assigned to Account C |

# Preconditions
1. Lessor has Account A (active default), Account B, and Account C.
2. Chalet 101 has no specific account assigned (relies on default).
3. Chalet 102 has Account C specifically assigned.

# Steps
1. As a customer, initiate a temporary booking on Chalet 101 and Chalet 102 to observe baseline accounts.
2. As the lessor, switch the default bank account from Account A to Account B.
3. As a customer, create a new temporary booking on Chalet 101.
4. As a customer, create a new temporary booking on Chalet 102.
5. Check transfer details for both new bookings.

# Expected Result
1. For Chalet 101 (unassigned), the new booking automatically displays Account B (the updated default account).
2. For Chalet 102 (specifically assigned), the new booking continues to display Account C unaffected by the default switch.
3. Baseline bookings created before the switch retain their original account snapshots unchanged.

# Notes
- Requirement: UF-74 (Main Flow Step 3, Alternative A2), UF-78.

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
