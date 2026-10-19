---
tc_id: TC-FAV-010
title: Verify Share Button Opens Native Share Sheet with Non-Sequential Random ID Web Link
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet Name | `شاليه الريف الهادئ` |
| Internal Sequential DB ID | `142` |
| Generated Public Share Link | `https://chalets.codlop.sa/p/k7x9m2q` (Random alphanumeric token) |

# Preconditions
1. Customer is viewing the place details page for `شاليه الريف الهادئ`.
2. The place page displays the **"Share"** (`مشاركة`) icon/button in the top app bar or action area.

# Steps
1. Tap the **"Share"** (`مشاركة`) button on the place page.
2. Inspect the native system share sheet presented by the OS (Android / iOS).
3. Copy or extract the URL payload populated into the share sheet.
4. Verify the URL format, domain, and path parameters.
5. Repeat for another chalet and compare the URL slug patterns.

# Expected Result
1. Tapping "Share" triggers the native system share sheet immediately.
2. The link generated is a public web URL.
3. The link identifier uses a cryptographically random string (e.g. `k7x9m2q`), strictly avoiding sequential numerical IDs (e.g. `/p/142`) to prevent listing enumeration.

# Notes
- Requirement: UF-21 Step 1 and Notes ("The link uses a random ID, not a sequential number").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
