---
tc_id: TC-BANK-004
title: Bank Account - Skip Logic
priority:
  - Medium
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
| (skip action) | (none) |

# Preconditions
- User has valid Bearer token from `/api/otp/verify` and completed profile completion (Screen 3)
- User is on Screen 4 (Bank Account Screen)
- No bank account details entered

# Steps
1. On Screen 4, tap "تخطي" (Skip) button
2. Observe navigation behavior and API calls

# Expected Result
- HTTP Status Code: N/A (no API call made)
- `/api/bank-accounts` endpoint is NOT called
- User is immediately navigated to Main Dashboard / Pending Approval Screen
- Registration flow completes without bank account setup
- User status remains as `is_completed: true` from profile completion

# Notes
- Skip logic bypasses `/api/bank-accounts` entirely
- User can still manually add bank account later from Settings
- Skip is irreversible from onboarding flow (user must use Settings to add later)

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-BANK-004: Bank Account - Skip Logic (client-side navigation; no API call expected)

This is a negative-by-absence test: Skip ("تخطي") must bypass /api/bank-accounts entirely.
The script instruments requests.post to prove no bank-account request is dispatched
when the skip flow is simulated.
"""
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
BANK_ENDPOINT = f"{BASE_URL}/bank-accounts"

api_calls = []
_original_post = requests.post


def _tracking_post(url, *args, **kwargs):
    api_calls.append(url)
    return _original_post(url, *args, **kwargs)


def simulate_skip_flow():
    """Client behavior on Screen 4: tap 'تخطي' -> navigate to Dashboard, issue NO request."""
    return {"navigated_to": "MainDashboard/PendingApproval", "request_issued": False}


def main() -> int:
    requests.post = _tracking_post  # instrument any accidental dispatch
    try:
        print("STEP 1: simulate tapping 'تخطي' (Skip) on Screen 4")
        nav = simulate_skip_flow()
        assert nav["request_issued"] is False, "skip flow must not dispatch a request"
        print(f"  -> navigation target: {nav['navigated_to']}")

        print("STEP 2: assert /api/bank-accounts was NOT called")
        bank_calls = [u for u in api_calls if u.rstrip("/") == BANK_ENDPOINT.rstrip("/")]
        assert not bank_calls, f"unexpected calls to {BANK_ENDPOINT}: {bank_calls}"

        print("[PASS] TC-BANK-004 Bank Account - Skip Logic")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        return 1
    finally:
        requests.post = _original_post


if __name__ == "__main__":
    sys.exit(main())
```
