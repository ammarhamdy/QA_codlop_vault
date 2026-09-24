---
tc_id: TC-CU-047
title: Send Identical Contact Details Repeatedly and Verify Honest Duplicate Handling
priority: Medium
status:
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - creative
  - duplicate
  - security
---

# Test Data
| Field | Value |
| ----- | ----- |
| Payload | Valid TC-CU-001 data |
| Cadence | 3 runs, 5 s apart |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Execute the runner three times in a row with the same payload.
2. Track HTTP codes and the lead/notification pipeline count.

# Expected Result
- System responds per the agreed duplicate policy: rate-limit (e.g. 429) OR accepted-but-coalesced.
- UI never implies three separate consultations were created (no triple success spam if server coalesced).

# Notes
- Expected policy value needs a REQ-CODLOP-SA-002 ruling (rate-limit window, threshold); record the observed behavior once defined.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
for i in 1 2 3; do bash Projects/Project-codlop.sa/Scripts/contect-us.sh; echo "--- run $i code above ---"; sleep 5; done
# Expect: 3rd run is coalesced/rate-limited per policy — document observed codes.
```

---
*Last Updated: 2026-09-23 12:46*
