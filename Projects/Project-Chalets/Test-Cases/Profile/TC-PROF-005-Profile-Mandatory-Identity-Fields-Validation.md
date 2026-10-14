---
tc_id: TC-PROF-005
title: Verify Mandatory Identity Fields and Optional Business Name on Profile Completion
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Authenticated Client | Logged-in client (`0505555554`) |
| Scenario A: Missing National ID | National ID: `[Empty]`, ID Photo: `id.jpg`, Business Name: `مؤسسة تجارية` |
| Scenario B: Missing ID Photo | National ID: `1000000008`, ID Photo: `[None]`, Business Name: `مؤسسة تجارية` |
| Scenario C: Optional Business Name Omitted | National ID: `1000000008`, ID Photo: `id.jpg`, Business Name: `[Empty]` |

# Preconditions
1. Client has completed registration with Name and Mobile number.
2. Client is logged in and navigates to the Profile completion / Identity verification screen.

# Steps
1. **Scenario A:** Enter ID Photo, leave National ID empty, and tap "Save".
2. Record system response.
3. **Scenario B:** Enter valid National ID, omit ID Photo, and tap "Save".
4. Record system response.
5. **Scenario C:** Enter valid National ID, upload valid ID Photo, leave Business Name empty, and tap "Save".
6. Record system response.

# Expected Result
1. **Scenario A:** System displays a validation error stating National ID is required to complete identity verification.
2. **Scenario B:** System displays a validation error stating ID Photo is required to complete identity verification.
3. **Scenario C:** System successfully saves the identity verification details without requiring the optional Business Name field.

# Notes
- Verifies business rule:
  - `رقم الهوية الوطنية`: إلزامي (نعم)
  - `صورة الهوية`: إلزامي (نعم)
  - `اسم النشاط`: إلزامي (لا)
- Identity verification is required prior to booking chalets (per requirement: `حجز شاليه: الهوية، صورة الهوية + تسجيل الدخول`).

# Attachments

# Script

---
*Last Updated: 2026-10-14 14:15*
