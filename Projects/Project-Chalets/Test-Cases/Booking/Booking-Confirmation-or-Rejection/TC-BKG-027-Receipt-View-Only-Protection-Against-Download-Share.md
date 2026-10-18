---
tc_id: TC-BKG-027
title: Verify Receipt Privacy Restricts Lessor to View-Only Without Download or External Share
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000507` |
| Uploaded Receipt File | `bank_receipt_doc_441.png` |
| Lessor Account | Authorized Lessor of the Chalet |

# Preconditions
1. Booking `BKG-2026-000507` has an uploaded receipt attached.
2. Lessor is logged in and navigates to the booking confirmation screen.

# Steps
1. As the Lessor, open the details view for `BKG-2026-000507`.
2. Tap on the receipt thumbnail/container to view the receipt.
3. Check UI controls for the presence of "Download", "Save to Device", "Share", or "Print" options.
4. Attempt to trigger browser / OS context menu options (e.g. right-click "Save Image As", long-press share).
5. Verify whether the secure image viewer disables downloading or external exporting.

# Expected Result
1. The receipt preview is rendered inside a secure in-app viewer strictly for verification purposes ("view only").
2. No download, export, save-to-gallery, or share buttons are provided in the UI.
3. The platform enforces the receipt privacy rule preventing lessors from saving or sharing customer financial receipts externally.

# Notes
- Requirement: UF-04 Step 1 ("Shows booking details and the receipt (view only, no sharing or download)") and Functional Reference Step 91 ("لا يستطيع المؤجّر مشاركة الإيصال أو تنزيله خارجيًا").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
