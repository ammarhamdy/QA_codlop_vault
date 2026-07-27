---
tc_id: TC-Profile-014
title: Verify malicious input protection
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-005-User-Profile
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Profile page.
# Steps
1. Enter a SQL Injection payload (e.g., ' OR '1'='1) in name field.
2. Enter XSS (`<script>alert(1)</script>`) in name field.
3. Save after each attempt
# Expected Result
-The system safely handles malicious input without executing scripts or exposing database errors.
# Notes

# Attachments
