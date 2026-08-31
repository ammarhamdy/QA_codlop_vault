---
tc_id: TC-BANK-001
title: Bank Account - Save Successful
priority:
  - High
status:
type:
  - API
linked_requirement: REQ-004
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| holder_name | "Ali Account" |
| account_number | "1234567101" |
| iban | "332165161616547" |
| bank_name | "بنك مصر" |

# Preconditions
- User has valid Bearer token from `/api/otp/verify` and completed profile completion
- Token is stored in `Authorization: Bearer <token>` header
- User is on Screen 4 (Bank Account Screen)

# Steps
1. Send POST request to `/api/bank-accounts` with form parameters: `holder_name="Ali Account"`, `account_number="1234567101"`, `iban="332165161616547"`, `bank_name="بنك مصر"`
2. Include `Authorization: Bearer 67|GLZlrLJGKpbgRh9YIN2KzpSCB1wANoW2CncdXNiy629f8836` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 200
- Response body `success: true`
- `data.is_main` equals `true`
- `data.holder_name` equals `"Ali Account"`
- `data.account_number` equals `"1234567101"`
- `data.iban` equals `"332165161616547"`
- `data.bank_name` equals `"بنك مصر"`
- User is routed to Main Dashboard or Pending Approval Screen based on `is_approved`
- `data.user_id` matches authenticated user

# Notes
- First bank account saved is marked as `is_main: true`
- Response confirms all bank details are persisted
- Navigation depends on user role approval status

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-BANK-001: Bank Account - Save Successful (POST /api/bank-accounts)
Reference: Scripts/Service-Provider/Auth/POST-bank-accounts.md
"""

```
