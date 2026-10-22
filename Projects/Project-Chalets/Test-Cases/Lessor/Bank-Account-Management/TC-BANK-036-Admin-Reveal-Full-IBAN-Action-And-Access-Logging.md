---
tc_id: TC-BANK-036
title: Admin Full IBAN View - Reveal Action Unmasks IBAN and Triggers Mandatory Audit Logging
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Actor Role | Action | Expected Outcome |
| ---------- | ------ | ---------------- |
| Admin (Any role) | Click "Reveal Full IBAN" (`عرض الآيبان كاملاً`) | Shows full 24-character IBAN and logs view event |

# Preconditions
1. Admin user is authenticated with permission to view lessor profiles.
2. Lessor has a saved bank account with masked IBAN displayed on screen.

# Steps
1. Navigate to the lessor's profile in the admin panel and locate the bank account card.
2. Locate the "Reveal Full IBAN" or eye icon action next to the masked IBAN.
3. Click the action to reveal the full IBAN.
4. Verify that the full unmasked IBAN (`SA0380000000608010167519`) is rendered.
5. Inspect the security audit logs in the admin backend.

# Expected Result
1. Any authenticated admin role with profile view access can reveal the full IBAN.
2. The full 24-character IBAN is unmasked and displayed clearly.
3. The system generates an immutable audit log entry capturing:
   - Admin user ID and timestamp.
   - Target lessor and bank account ID viewed.
   - Explicit event type `VIEW_FULL_IBAN`.

# Notes
- Requirement: UF-79 (Main Flow Step 2; Notes - closed questions: "Which admin roles can open the full IBAN? Any").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
