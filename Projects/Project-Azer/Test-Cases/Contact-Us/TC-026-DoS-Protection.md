---
tc_id: TC-026
title: Verify Denial of Service (DoS) Protection on Contact Us Form
priority: High
status: Ready
type: Security
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - security
  - dos
---

# Test Data
| Field               | Value                                |
| ------------------- | ------------------------------------ |
| Name                | DoS Test                             |
| Email Address       | dos.test@example.com                 |
| Phone Number        | +10000000000                         |
| Message Content     | Automated DoS message.               |
| Request Type        | Inquiry                              |
| Concurrent Requests | High volume of simultaneous requests |

# Preconditions
- The system has DoS protection mechanisms in place (e.g., WAF, IP blocking, CAPTCHA after high volume).

# Steps
1. From multiple sources or using automation, send a very high volume of concurrent or rapid requests to the 'Contact Us' endpoint.
2. Monitor server performance and responsiveness during the attack.
3. Attempt to submit a legitimate request during and after the attack.

# Expected Result
- The DoS protection mechanism should activate.
- The system should remain responsive to legitimate users.
- Malicious requests should be blocked or significantly slowed down.
- Legitimate requests should still be processed, albeit potentially with higher latency if the system is under heavy load.

# Notes
- This test requires specialized tools for simulating DoS attacks and careful monitoring of system resources.
- Ensure the attack is controlled and does not impact production systems.

# Attachments
