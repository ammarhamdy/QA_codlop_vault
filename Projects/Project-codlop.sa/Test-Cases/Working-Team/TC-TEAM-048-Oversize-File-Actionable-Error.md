---
tc_id: TC-TEAM-048
title: Upload Oversize Image File Verify Actionable Error
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
| `photo` | File exceeding the permitted size limit (generate 15–25 MB JPG if limit unknown) |

# Preconditions
- Logged in as admin; oversize fixture prepared. Establish the documented limit first (if none, record finding).

# Steps
1. Attach the oversize file; observe client-side reaction.
2. Submit; record server message, status code, and timing.
3. Verify the form state is preserved (other fields not wiped).

# Expected Result
- If a limit exists: actionable error (max size stated, e.g. "max 5 MB"); no silent failure, no 500, no wiped form.

# Notes
- If no limit is enforced, log the accepted size as a finding for requirements review.

# Attachments
- Screenshots of error; note upload time.

# Script
```shell
python3 -c "from PIL import Image; Image.new('RGB',(4000,4000),'red').save('/tmp/huge.jpg',quality=100)"
ls -la /tmp/huge.jpg
curl -s -o /dev/null -w "%{http_code}" --location --max-time 120 --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" \
  --form "photo=@/tmp/huge.jpg;type=image/jpeg" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 413/422 or redirect-back with max-size message when a limit exists.
```

---
*Last Updated: 2026-09-24 00:00*
