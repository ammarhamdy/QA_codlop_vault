---
tc_id: TC-ACPT-006
title: Receipt Security & Privacy - Strict Prevention of Receipt Download or Sharing
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Security Control | Expected Restriction |
| ---------------- | -------------------- |
| Download Action | No download button, long-press save disabled |
| Share Action | No share intent/action available |
| Receipt Access Scope | Private, view-only (with zoom) within app boundary |

# Preconditions
1. Lessor is viewing the booking details of a booking awaiting confirmation.
2. The customer's uploaded receipt image is displayed.

# Steps
1. In the booking details view, inspect the UI for any "Save", "Download", "Export", or "Share" buttons.
2. Open the receipt in zoomed view.
3. Attempt to long-press on the image to invoke context menus (e.g., "Save to Gallery" or "Share").
4. Inspect the underlying view components or network calls to verify direct unauthenticated download links are not exposed.

# Expected Result
1. The receipt is strictly private: no share or download buttons exist in the UI.
2. Context menu options to save or share the image are blocked.
3. The lessor can only view and zoom the receipt within the secure app container.

# Notes
- Requirement: UF-80 (Error Flow E1: "Lessor tries to share or download the receipt -> Not allowed. The receipt is private"), UF-04 (Main Flow Step 1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
