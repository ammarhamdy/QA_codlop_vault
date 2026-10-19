---
tc_id: TC-DSP-005
title: Verify Dispute Evidence Enforces Maximum Limit of 10 Files and 200 MB for Video
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000805` |
| Valid Files Set | 10 image/document files (< 10 MB each) |
| Invalid Files Set | 11 files |
| Valid Video File | `chalet_condition.mp4` (`200 MB` / `209,715,200 bytes`) |
| Invalid Video File | `chalet_condition_oversized.mp4` (`201 MB`) |
| Expected Error Message | `الحد الأقصى 10 ملفات، والفيديو 200 ميجابايت` |

# Preconditions
1. Customer is on the dispute evidence attachment screen for `BKG-2026-000805`.
2. Valid dispute type and description are entered.

# Steps
1. Attempt to attach 11 files simultaneously to the evidence section.
2. Verify system response and error message.
3. Remove 1 file so that exactly 10 files are attached; observe validation status.
4. Attempt to attach a video file measuring 201 MB (`chalet_condition_oversized.mp4`).
5. Verify system response and error message.
6. Replace the oversized video with a video measuring exactly 200 MB (`chalet_condition.mp4`).
7. Tap Submit.

# Expected Result
1. Attempting to upload more than 10 files is blocked with the exact error message: `«الحد الأقصى 10 ملفات، والفيديو 200 ميجابايت»`.
2. Attempting to attach a video exceeding 200 MB is blocked with the same error message: `«الحد الأقصى 10 ملفات، والفيديو 200 ميجابايت»`.
3. Attaching up to 10 files and a video up to 200 MB passes validation and submits successfully.

# Notes
- Requirement: UF-08 Step 4 and Error Flow E4 ("More than 10 files, or a video over 200 MB: Blocked with «الحد الأقصى 10 ملفات، والفيديو 200 ميجابايت»").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
