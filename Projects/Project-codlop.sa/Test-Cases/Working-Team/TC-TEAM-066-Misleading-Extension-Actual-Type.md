---
tc_id: TC-TEAM-066
title: Upload Image With Misleading Extension Verify Type Based Validation
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - image-upload
  - security
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Fixtures | PNG bytes named `.jpg`; text file named `.jpg`; JPG bytes named `.png` |

# Preconditions
- Logged in as admin; spoofed fixtures prepared (`cp real.png fake.jpg` etc.).

# Steps
1. Upload PNG-content-as-`.jpg`; submit; record accept/reject.
2. Upload text-content-as-`.jpg`; submit; record result (must reject).
3. Upload JPG-content-as-`.png`; record whether handled by content sniffing.

# Expected Result
- Validation based on actual file content (MIME sniffing), not filename alone; text-disguised-as-image always rejected.

# Notes
- Security-adjacent; extends TC-TEAM-043 (non-image rejection).

# Attachments
- Per-fixture results table.

# Script
```shell
cp ./avatar.png /tmp/spoof.jpg
echo "not an image" > /tmp/spoof2.jpg
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/spoof2.jpg;type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: rejection for text-as-jpg. Repeat per fixture and compare.
```

---
*Last Updated: 2026-09-24 00:00*
