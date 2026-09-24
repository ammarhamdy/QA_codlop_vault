---
tc_id: TC-TEAM-061
title: Long Arabic Bio With Paragraphs Urls Emoji Keeps Card Readable
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - biography
  - layout
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `bio_ar` | 10+ paragraphs, bullet-like lines, embedded URL, emoji |

# Preconditions
- Logged in as admin.

# Steps
1. Enter a very long Arabic bio (paragraphs, `•`-style lines, `https://example.com` link, emoji).
2. Save; open the public member card (desktop + mobile widths).
3. Check for overlapping text, clipped content, broken links, unreadable sections.

# Expected Result
- Card layout stays readable: no overlap, link clickable, emoji rendered, long text wrapped/scrolled per design.

# Notes
- Stress-layout case; record breakpoints where degradation starts.

# Attachments
- Full-card screenshots (desktop + mobile).

# Script
```shell
python3 -c "print('\n\n'.join(['فقرة تجريبية • سطر https://example.com 🎉']*12))" > /tmp/longbio.txt
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "title_ar=مهندس برمجيات" --form "bio_ar=$(cat /tmp/longbio.txt)" \
  --form "photo=;filename=" --form "placeholder=pm" --form "is_visible=1"
# Expect: 302 (or documented length limit); card remains readable.
```

---
*Last Updated: 2026-09-24 00:00*
