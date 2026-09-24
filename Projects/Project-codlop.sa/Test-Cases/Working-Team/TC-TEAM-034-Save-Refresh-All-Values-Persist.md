---
tc_id: TC-TEAM-034
title: Save Refresh Verify All Values Visibility Color Image Persist
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - persistence
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| `name_ar` | `احمد` |
| `title_ar` | `مهندس برمجيات` |
| `tint` | `mint` |
| `placeholder` | `pm` |
| `is_visible` | `1` |
| `email` | `codlop.sa@mail.com` |

# Preconditions
- Logged in as admin; valid image file available.

# Steps
1. Fill all fields (AR+EN names/titles/bios, URLs, email, color, placeholder, image, visibility ON, show-email ON).
2. Save; record every value.
3. Hard-refresh the edit page; compare all values field by field.
4. Open the public team card and confirm visibility, color, placeholder/image, and email display match.

# Expected Result
- Every saved value — including visibility, email-display preference, color, placeholder, and image — unchanged after refresh and consistent with the public card.

# Notes
- Refresh variant of TC-TEAM-019 (navigation persistence); run both for full regression.

# Attachments
- Before/after screenshots of form and public card.

# Script
```shell
curl -s -o /dev/null -w "%{http_code}" --location --request POST "https://test.codlop.sa/admin/team" \
  -b "$COOKIE" --form "_token=$CSRF_TOKEN" \
  --form "name_ar=احمد" --form "name_en=Ahmed" \
  --form "title_ar=مهندس برمجيات" --form "title_en=software engineer" \
  --form "tint=mint" --form "bio_ar=مهندس برمجيات" --form "bio_en=software engineer" \
  --form "linkedin_url=https://linkedin.com" --form "x_url=https://x.com/codlop" \
  --form "email=codlop.sa@mail.com" --form "photo=@./avatar.png;type=image/png" \
  --form "placeholder=pm" --form "is_visible=1"
# Expect: 302; refresh edit page and diff all fields + public card.
```

---
*Last Updated: 2026-09-24 00:00*
