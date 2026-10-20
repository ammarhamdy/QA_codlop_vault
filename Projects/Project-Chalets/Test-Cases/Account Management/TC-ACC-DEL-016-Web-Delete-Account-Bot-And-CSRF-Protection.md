---
tc_id: TC-ACC-DEL-016
title: Web Delete Account Security Controls (CSRF, Bot Protection, and Rate Limits)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field      | Value                                |
| ---------- | ------------------------------------ |
| endpoint   | (https://tanfeeth.sa/delete-account) |
| test_ip    | -                                    |
| user_phone | 0509345678                           |

# Preconditions
-Web server is running and serving Blade legal/technical routes.
-Web anti-bot middleware and CSRF protection are active.

# Steps
1. Send a `POST` request to `/delete-account` with missing or invalid `_token` (CSRF token).
2. Submit a request with a missing or manipulated encrypted timestamp field (anti-bot trap).
3. Submit a request where the form is submitted unnaturally fast (e.g. < 1 second after page load, violating bot threshold).
4. Send more than 120 requests within 1 minute from the same IP address (simulating automated flood / visitor rate limit).
5. Submit a legitimate request with a valid CSRF token, valid encrypted timestamp, and normal human submission timing.

# Expected Result
- Missing/invalid CSRF token returns HTTP 419 Page Expired / CSRF Token Mismatch.
- Missing or tampered encrypted timestamp is rejected by anti-bot middleware without prompting captchas.
- Rapid automated submission is flagged and rejected as bot activity.
- Exceeding visitor rate limits triggers HTTP 429 `Too Many Requests` with a `Retry-After` header.
- Legitimate submission succeeds and initiates the phone verification workflow.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-20 12:44*
