---
tc_id: TC-JOIN-025
title: Verify Successful Application Submission Idempotency and Confirmation Notification
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
| Application Number Format | `APP-YYYY-NNNNNN` |
| On-Screen Confirmation | `«أُرسل طلبك برقم APP-2026-000501»` |
| Push/In-App Notice | `«استلمنا طلب انضمامك APP-2026-000501 وسنراجعه»` |
| Submission Stress Test | Rapid double-tap on Submit button |

# Preconditions
1. All applicant data and at least one complete place are saved in the draft.
2. Submit button is active on "Review and Submit".

# Steps
1. Rapidly tap the **"Submit"** button twice.
2. Observe application creation and network requests.
3. Verify on-screen confirmation banner.
4. Check push notifications and in-app notifications.
5. In the database, check the created application record, status, and snapshot of field definitions.
6. Attempt to edit or withdraw the application after submission.

# Expected Result
1. The submission is idempotent: exactly ONE application record is created despite double-tapping (Alternative Flow A1).
2. The application is assigned unique number `APP-2026-000501` and status is set to `Submitted` (`مُرسل`).
3. An exact immutable copy/snapshot of the field definitions is archived with the submission.
4. On-screen modal displays: `«أُرسل طلبك برقم APP-…»`.
5. Notification is dispatched: `«استلمنا طلب انضمامك APP-… وسنراجعه»`.
6. The user is strictly prevented from editing or withdrawing the application post-submission.

# Notes
- Requirement: UF-30 Main Flow Steps 3 to 5, Flow A1 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
