---
tc_id: TC-JOIN-006
title: Verify Company Applicant Enters Valid Commercial Registration and Corporate Data
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scope | **Company** (`منشأة / شركة`) |
| Company Official Name | `شركة واحة الشاليهات الفندقية المحدودة` |
| Trade Name | `منتجعات الواحة` |
| Commercial Registration (CR) Number | `1010987654` (10 digits) |
| Activity Address | `الرياض، حي الملقا، طريق أنس بن مالك` |
| Authorized Person Name | `محمد بن سالم القحطاني` |
| Authorized Person Mobile | `0501122334` |
| Authorization Document | `delegation_letter.pdf` (1.8 MB) |

# Preconditions
1. User taps "Join as Lessor" and selects **Company** (`منشأة / شركة`).
2. User is on the Corporate Applicant Data form.

# Steps
1. Enter Company Official Name and Trade Name.
2. Enter CR number `1010987654`.
3. Enter Activity Address.
4. Enter Authorized Person data (Name and Mobile).
5. Upload Authorization Document `delegation_letter.pdf`.
6. Tap Next.

# Expected Result
1. The 10-digit Commercial Registration number passes format validation.
2. The authorization document is uploaded successfully.
3. Corporate applicant draft data is auto-saved.
4. The system navigates smoothly to UF-29 (Add Place).

# Notes
- Requirement: UF-28 Main Flow Steps 4 to 6.
- Company entities do not support sub-accounts for employees.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
