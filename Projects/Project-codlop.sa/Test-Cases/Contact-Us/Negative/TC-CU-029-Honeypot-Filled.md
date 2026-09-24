---
tc_id: TC-CU-029
title: Reject or Ignore Requests That Populate the Invisible Anti-Spam Field
priority: Medium
status:
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - security
  - honeypot
---

# Test Data
| Field | Value |
| ----- | ----- |
| _x_y_z_ | `https://spam.example/buy-now` |
| Other fields | valid |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Add `-F "_x_y_z_=https://spam.example/buy-now"` to the runner's curl (before the consent line).
2. Submit via curl; then in UI, reveal the hidden field (DevTools) and fill it.

# Expected Result
- Request is rejected or silently discarded — the lead never enters the pipeline.
- Response must not scream 'honeypot detected' to the attacker (silent generic outcome).

# Notes
- Honeypot field in the live DOM is `_x_y_z_` (“Leave this field empty”, `tabindex=-1`, `autocomplete=new-password`); the runner script does not send it.
- Field id/name in live DOM: `_x_y_z_`.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
sed 's|-F "consent=1"|-F "_x_y_z_=https://spam.example/buy-now" -F "consent=1"|' Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-029.sh
bash /tmp/tc-cu-029.sh
# Expect: No lead stored (HTTP 2xx decoy or 422 — but never processed).
```

---
*Last Updated: 2026-09-23 12:28*
