---
tc_id: TC-TEAM-001
title: Open Arabic Data Section and Verify Existing Member Information Populated
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - arabic-fields
  - edit-form
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Form fields | `name_ar`, `title_ar`, `bio_ar` |
| Existing member | seeded team member with Arabic data |

# Preconditions
- Logged in to `https://test.codlop.sa/admin/team` as admin.
- At least one team member exists with saved Arabic name, title `مهندس الدعم الفني`, and biography.
- Browser language set to accept Arabic (`ar-EG,ar;q=0.7`).

# Steps
1. Open the team member edit page (`/admin/team/{id}/edit` or equivalent).
2. Expand / focus the Arabic data section.
3. Observe `name_ar`, `title_ar`, `bio_ar` field values.
4. Compare displayed values against the stored DB values.

# Expected Result
- Arabic section opens without errors.
- All three fields are pre-populated with the exact stored values (no truncation, no encoding corruption, RTL rendering correct).
- No empty fields where data exists; no placeholder text mistaken for value.

# Notes
- Base regression for all edit tests; run before TC-TEAM-002 to TC-TEAM-005.
- Encoding check: Arabic must not appear as `????` or HTML entities.

# Attachments
- Screenshot of Arabic section with populated values.

# Script
```shell
# Verify stored Arabic values via edit-form fetch (cookies/token must be fresh):
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" \
  -H "accept-language: en-GB,en;q=0.9,ar-EG;q=0.8,ar;q=0.7" | grep -o 'name_ar[^>]*value="[^"]*"'
# Expect: value attributes contain the saved Arabic name/title.
```

---
*Last Updated: 2026-09-24 00:00*
