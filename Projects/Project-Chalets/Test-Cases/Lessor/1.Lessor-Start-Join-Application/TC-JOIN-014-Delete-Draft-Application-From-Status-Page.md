---
tc_id: TC-JOIN-014
title: Verify User Can Delete Draft Application and Purge Attached Files
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Application State | Unsubmitted Draft |
| Attached Files | `id_photo.jpg`, `place_photo1.jpg`, `deed.pdf` |
| Entry Point to Delete | Application Status / Draft Overview Screen |

# Preconditions
1. User has an active unsubmitted join application draft with several uploaded files.
2. User is on the Application Draft status page.

# Steps
1. Tap the **"Delete Draft"** (`حذف المسودة`) button on the draft status page.
2. Confirm the deletion prompt.
3. Check the application database for the draft record.
4. Check media storage / S3 bucket for the previously uploaded document files.
5. In the app, navigate to "My Account" -> "Join as Lessor".

# Expected Result
1. The draft record is permanently deleted from the database.
2. All temporary documents, photos, and proofs attached to the draft are completely purged from storage.
3. Tapping "Join as Lessor" starts a completely fresh, empty application with no leftover data.

# Notes
- Requirement: UF-28 Alternative Flow A5 & Notes (Closed question: "Where does the user delete a draft? From the status page").

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
