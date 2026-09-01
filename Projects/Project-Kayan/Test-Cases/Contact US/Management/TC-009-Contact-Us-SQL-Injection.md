---
tc_id: TC-Admin-009
title: Verify Contact Us  setting fields handle SQL Injection input safely
priority:
  - High
status:
  - Ready
type: Security
linked_requirement: US-002-Contact-US
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on Contact Us settings page.
# Steps
1. Enter SQL Injection payload in Title or Description  
2. Click Save.
# Expected Result
-Input is safely handled; no SQL error or unauthorized behavior occurs.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*