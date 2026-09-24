---
tc_id: TC-TEAM-020
title: Verify Arabic Member Fields Shown By Default With RTL Labels
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - arabic-fields
  - rtl
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Form fields | `name_ar`, `title_ar`, `bio_ar` |
| Labels | Arabic labels for name, job title, bio |

# Preconditions
- Logged in to `https://test.codlop.sa/admin/team` as admin.
- Open team member create page (`/admin/team/create`).

# Steps
1. Open the create form with a fresh session (no language switch).
2. Observe which language section is displayed by default.
3. Inspect labels of `name_ar`, `title_ar`, `bio_ar` for correct Arabic text.
4. Check computed `direction` / `text-align` of labels and inputs (expect `rtl` / right).
5. Switch app language to English and back; confirm Arabic remains the default section.

# Expected Result
- Arabic member fields are displayed by default without any language switch.
- Arabic labels render correctly (no `????`, no entities, no truncation) and layout is right-to-left.

# Notes
- Base i18n default check; complements TC-TEAM-001 (populated values) and TC-TEAM-005 (English LTR).

# Attachments
- Screenshot of default Arabic section with RTL layout.

# Script
```shell
# Confirm Arabic inputs exist on the create page:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/create" \
  -H "accept-language: en-GB,en;q=0.9,ar-EG;q=0.8,ar;q=0.7" | grep -o 'name="\(name_ar\|title_ar\|bio_ar\)"' | sort -u
# Expect: all three Arabic field names present.
```

---
*Last Updated: 2026-09-24 00:00*
