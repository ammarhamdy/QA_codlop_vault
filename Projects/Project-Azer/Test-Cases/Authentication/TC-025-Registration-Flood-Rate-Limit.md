---
tc_id: TC-025
title: Verify Registration Endpoint Enforces Rate Limiting Against Automated Flood
priority:
  - High
status:
  - Ready
type:
  - API
linked_requirement:
tags:
  - test-case
  - authentication
---

# Test Data

| Field          | Value                                                       |
| -------------- | ----------------------------------------------------------- |
| Payload        | Valid registration data with unique email/phone per request |
| Request volume | 50 requests in 60 seconds from the same IP                  |
| Tool           | Burp Suite Intruder / Locust                                |
# Preconditions
- API is reachable
- Test environment permits load generation
- Unique email generator prepared (e.g., `flood+{n}@example.com`)
# Steps
- Send 50 valid registration requests in rapid succession from the same IP
- Monitor HTTP response codes across the sequence
- Check if any `429 Too Many Requests` response is returned
- If rate limiting triggers, record at which request number it activates
- Check if the server creates all 50 accounts before the rate limit kicks in
# Expected Result
- `429` returned after a reasonable threshold (e.g., 5–10 requests/minute)
- Subsequent requests blocked until cooldown period expires
- `Retry-After` header present in `429` response
- Accounts are NOT bulk-created before rate limiting activates
# Notes
- No rate limiting on registration = free account factory for spam, credential stuffing infrastructure, and platform abuse.
- Absence of `429` at any volume is a **High** severity finding.
# Attachments
