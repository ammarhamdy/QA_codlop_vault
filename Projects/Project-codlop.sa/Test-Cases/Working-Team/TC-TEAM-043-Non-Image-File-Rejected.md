---
tc_id: TC-TEAM-043
title: Upload Non Image File Verify Rejected
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `photo` | PDF, `.exe`, `.txt` files (one at a time) |

# Preconditions
- Logged in as admin; non-image fixtures prepared locally.

# Steps
1. Attempt to attach a PDF as `photo`; submit; record result.
2. Repeat with an executable and a text file.
3. Verify preview behavior and whether anything was stored.

# Expected Result
- Each non-image rejected with a clear error; preview unchanged; nothing executable stored or publicly reachable.

# Notes
- MIME + content validation, not just extension (see TC-TEAM-066).

# Attachments
- Screenshots of rejection messages.

# Script
```shell
echo "not an image" > /tmp/fake.txt
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/fake.txt;type=text/plain" \
  --form "placeholder=pm" --form "is_visible=1" | grep -io 'photo[^<]*' | head -2
# Expect: validation error for photo. Repeat with .pdf / .exe fixtures.
```

---
*Last Updated: 2026-09-24 00:00*
