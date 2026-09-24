---
tc_id: TC-TEAM-046
title: Upload Image Below Minimum Dimensions Verify Rejected Or Warned
priority: Medium
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
| `photo` | Square image below 800×800 (e.g. 200×200 JPG) |

# Preconditions
- Logged in as admin; small square fixture prepared.

# Steps
1. Upload the undersized image; observe preview.
2. Submit; record whether rejected, warned, or silently accepted.
3. If accepted, check public card quality.

# Expected Result
- Rejected or accompanied by a clear minimum-dimensions warning (stated minimum 800×800); never silently accepted as if compliant.

# Notes
- Links to TC-TEAM-009 (valid ≥800×800 baseline).

# Attachments
- Screenshots of warning/rejection.

# Script
```shell
python3 -c "from PIL import Image; Image.new('RGB',(200,200),'red').save('/tmp/small.jpg')"
curl -s --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/small.jpg;type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1" | grep -io 'photo[^<]*' | head -2
# Expect: dimensions validation error or explicit warning.
```

---
*Last Updated: 2026-09-24 00:00*
