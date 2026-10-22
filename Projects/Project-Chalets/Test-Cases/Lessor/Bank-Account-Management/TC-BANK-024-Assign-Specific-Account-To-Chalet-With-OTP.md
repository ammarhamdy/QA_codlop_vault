---
tc_id: TC-BANK-024
title: Assign Specific Bank Account to Chalet - Configured from Place and Ad Details with OTP Verification
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
| Chalet | `شاليه الرمال الذهبية` |
| Navigation Route | Place and Ad Details (`تفاصيل المكان والإعلان` - UF-49) |
| Initial Account | Default Account (`Account 1`) |
| Newly Selected Account | Specific Account (`Account 2` - Alinma Bank) |
| OTP Code | `1234` |

# Preconditions
1. Lessor has at least two saved bank accounts (Account 1 and Account 2).
2. Lessor owns Chalet "شاليه الرمال الذهبية" which currently uses the default account.

# Steps
1. Navigate to the chalet management section and open **"Place and Ad Details"** (`تفاصيل المكان والإعلان`) for the target chalet.
2. Locate the **Bank Account** section.
3. Observe that it currently displays Account 1 (the default account).
4. Select Account 2 from the account selector.
5. Tap **"Save"** (`حفظ`).
6. Verify that an OTP verification dialog is presented and a code is sent to the registered mobile.
7. Enter the valid OTP code (`1234`) and confirm.

# Expected Result
1. The account assignment cannot be finalized without completing OTP verification.
2. Upon valid OTP entry, the chalet is explicitly linked to Account 2.
3. Subsequent new bookings created on this chalet present Account 2 to customers.
4. An SMS notification `تم تغيير حساب بنكي في حسابك على تنفيذ`, an in-app notice, and an audit line are generated.

# Notes
- Requirement: UF-75 (Main Flow Steps 1-5; Notes: assigned from Place and Ad Details), UF-76.

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
