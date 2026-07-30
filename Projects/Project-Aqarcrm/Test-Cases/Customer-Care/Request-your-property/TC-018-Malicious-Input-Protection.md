---
tc_id: TC-Property-Req-018
title: Verify protection against malicious input
priority:
  - High
status:
  - Ready
type: Security
linked_requirement:
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
-User is on the Request Your Property page.
# Steps
1. Enter a SQL Injection payload (e.g., ' OR '1'='1) in a text field.
2. Enter XSS (`<script>alert(1)</script>`) in a text field.
3. Submit the form after each attempt
# Expected Result
-The system safely handles malicious input, prevents SQL Injection and XSS attacks, and does not expose database errors or execute scripts.
# Notes

# Attachments
